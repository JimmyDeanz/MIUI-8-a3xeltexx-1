.class public Lmf/org/apache/xerces/util/EncodingMap;
.super Ljava/lang/Object;
.source "EncodingMap.java"


# static fields
.field protected static final fIANA2JavaMap:Ljava/util/Hashtable;

.field protected static final fJava2IANAMap:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 478
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    .line 481
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    .line 490
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "BIG5"

    const-string v2, "Big5"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSBIG5"

    const-string v2, "Big5"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CP037"

    const-string v2, "CP037"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM037"

    const-string v2, "CP037"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSIBM037"

    const-string v2, "CP037"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "EBCDIC-CP-US"

    const-string v2, "CP037"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "EBCDIC-CP-CA"

    const-string v2, "CP037"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "EBCDIC-CP-NL"

    const-string v2, "CP037"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "EBCDIC-CP-WT"

    const-string v2, "CP037"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM273"

    const-string v2, "CP273"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CP273"

    const-string v2, "CP273"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSIBM273"

    const-string v2, "CP273"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM277"

    const-string v2, "CP277"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CP277"

    const-string v2, "CP277"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSIBM277"

    const-string v2, "CP277"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "EBCDIC-CP-DK"

    const-string v2, "CP277"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "EBCDIC-CP-NO"

    const-string v2, "CP277"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM278"

    const-string v2, "CP278"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CP278"

    const-string v2, "CP278"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSIBM278"

    const-string v2, "CP278"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "EBCDIC-CP-FI"

    const-string v2, "CP278"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "EBCDIC-CP-SE"

    const-string v2, "CP278"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM280"

    const-string v2, "CP280"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CP280"

    const-string v2, "CP280"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSIBM280"

    const-string v2, "CP280"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "EBCDIC-CP-IT"

    const-string v2, "CP280"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM284"

    const-string v2, "CP284"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CP284"

    const-string v2, "CP284"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSIBM284"

    const-string v2, "CP284"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "EBCDIC-CP-ES"

    const-string v2, "CP284"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "EBCDIC-CP-GB"

    const-string v2, "CP285"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM285"

    const-string v2, "CP285"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CP285"

    const-string v2, "CP285"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSIBM285"

    const-string v2, "CP285"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "EBCDIC-JP-KANA"

    const-string v2, "CP290"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM290"

    const-string v2, "CP290"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CP290"

    const-string v2, "CP290"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSIBM290"

    const-string v2, "CP290"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "EBCDIC-CP-FR"

    const-string v2, "CP297"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM297"

    const-string v2, "CP297"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CP297"

    const-string v2, "CP297"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSIBM297"

    const-string v2, "CP297"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "EBCDIC-CP-AR1"

    const-string v2, "CP420"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM420"

    const-string v2, "CP420"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CP420"

    const-string v2, "CP420"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSIBM420"

    const-string v2, "CP420"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "EBCDIC-CP-HE"

    const-string v2, "CP424"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM424"

    const-string v2, "CP424"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CP424"

    const-string v2, "CP424"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSIBM424"

    const-string v2, "CP424"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM437"

    const-string v2, "CP437"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "437"

    const-string v2, "CP437"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CP437"

    const-string v2, "CP437"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSPC8CODEPAGE437"

    const-string v2, "CP437"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "EBCDIC-CP-CH"

    const-string v2, "CP500"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM500"

    const-string v2, "CP500"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CP500"

    const-string v2, "CP500"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSIBM500"

    const-string v2, "CP500"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "EBCDIC-CP-CH"

    const-string v2, "CP500"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "EBCDIC-CP-BE"

    const-string v2, "CP500"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM775"

    const-string v2, "CP775"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CP775"

    const-string v2, "CP775"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSPC775BALTIC"

    const-string v2, "CP775"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM850"

    const-string v2, "CP850"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "850"

    const-string v2, "CP850"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CP850"

    const-string v2, "CP850"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSPC850MULTILINGUAL"

    const-string v2, "CP850"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM852"

    const-string v2, "CP852"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "852"

    const-string v2, "CP852"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CP852"

    const-string v2, "CP852"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSPCP852"

    const-string v2, "CP852"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM855"

    const-string v2, "CP855"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "855"

    const-string v2, "CP855"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CP855"

    const-string v2, "CP855"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSIBM855"

    const-string v2, "CP855"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM857"

    const-string v2, "CP857"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "857"

    const-string v2, "CP857"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CP857"

    const-string v2, "CP857"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSIBM857"

    const-string v2, "CP857"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM00858"

    const-string v2, "CP858"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CP00858"

    const-string v2, "CP858"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CCSID00858"

    const-string v2, "CP858"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM860"

    const-string v2, "CP860"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "860"

    const-string v2, "CP860"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CP860"

    const-string v2, "CP860"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSIBM860"

    const-string v2, "CP860"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM861"

    const-string v2, "CP861"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "861"

    const-string v2, "CP861"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CP861"

    const-string v2, "CP861"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CP-IS"

    const-string v2, "CP861"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSIBM861"

    const-string v2, "CP861"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM862"

    const-string v2, "CP862"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "862"

    const-string v2, "CP862"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CP862"

    const-string v2, "CP862"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSPC862LATINHEBREW"

    const-string v2, "CP862"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM863"

    const-string v2, "CP863"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "863"

    const-string v2, "CP863"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CP863"

    const-string v2, "CP863"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSIBM863"

    const-string v2, "CP863"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM864"

    const-string v2, "CP864"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CP864"

    const-string v2, "CP864"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSIBM864"

    const-string v2, "CP864"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM865"

    const-string v2, "CP865"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "865"

    const-string v2, "CP865"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CP865"

    const-string v2, "CP865"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSIBM865"

    const-string v2, "CP865"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM866"

    const-string v2, "CP866"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "866"

    const-string v2, "CP866"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CP866"

    const-string v2, "CP866"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSIBM866"

    const-string v2, "CP866"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM868"

    const-string v2, "CP868"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CP868"

    const-string v2, "CP868"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSIBM868"

    const-string v2, "CP868"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CP-AR"

    const-string v2, "CP868"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM869"

    const-string v2, "CP869"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CP869"

    const-string v2, "CP869"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSIBM869"

    const-string v2, "CP869"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CP-GR"

    const-string v2, "CP869"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM870"

    const-string v2, "CP870"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CP870"

    const-string v2, "CP870"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSIBM870"

    const-string v2, "CP870"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "EBCDIC-CP-ROECE"

    const-string v2, "CP870"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "EBCDIC-CP-YU"

    const-string v2, "CP870"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM871"

    const-string v2, "CP871"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CP871"

    const-string v2, "CP871"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSIBM871"

    const-string v2, "CP871"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "EBCDIC-CP-IS"

    const-string v2, "CP871"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM918"

    const-string v2, "CP918"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CP918"

    const-string v2, "CP918"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSIBM918"

    const-string v2, "CP918"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "EBCDIC-CP-AR2"

    const-string v2, "CP918"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM00924"

    const-string v2, "CP924"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CP00924"

    const-string v2, "CP924"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CCSID00924"

    const-string v2, "CP924"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "EBCDIC-LATIN9--EURO"

    const-string v2, "CP924"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM1026"

    const-string v2, "CP1026"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CP1026"

    const-string v2, "CP1026"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSIBM1026"

    const-string v2, "CP1026"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM01140"

    const-string v2, "Cp1140"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CP01140"

    const-string v2, "Cp1140"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CCSID01140"

    const-string v2, "Cp1140"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM01141"

    const-string v2, "Cp1141"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CP01141"

    const-string v2, "Cp1141"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CCSID01141"

    const-string v2, "Cp1141"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM01142"

    const-string v2, "Cp1142"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CP01142"

    const-string v2, "Cp1142"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CCSID01142"

    const-string v2, "Cp1142"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM01143"

    const-string v2, "Cp1143"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CP01143"

    const-string v2, "Cp1143"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CCSID01143"

    const-string v2, "Cp1143"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM01144"

    const-string v2, "Cp1144"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CP01144"

    const-string v2, "Cp1144"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CCSID01144"

    const-string v2, "Cp1144"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM01145"

    const-string v2, "Cp1145"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CP01145"

    const-string v2, "Cp1145"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CCSID01145"

    const-string v2, "Cp1145"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM01146"

    const-string v2, "Cp1146"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CP01146"

    const-string v2, "Cp1146"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CCSID01146"

    const-string v2, "Cp1146"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM01147"

    const-string v2, "Cp1147"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CP01147"

    const-string v2, "Cp1147"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CCSID01147"

    const-string v2, "Cp1147"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM01148"

    const-string v2, "Cp1148"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CP01148"

    const-string v2, "Cp1148"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CCSID01148"

    const-string v2, "Cp1148"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM01149"

    const-string v2, "Cp1149"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 657
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CP01149"

    const-string v2, "Cp1149"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CCSID01149"

    const-string v2, "Cp1149"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "EUC-JP"

    const-string v2, "EUCJIS"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSEUCPKDFMTJAPANESE"

    const-string v2, "EUCJIS"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "EXTENDED_UNIX_CODE_PACKED_FORMAT_FOR_JAPANESE"

    const-string v2, "EUCJIS"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "EUC-KR"

    const-string v2, "KSC5601"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSEUCKR"

    const-string v2, "KSC5601"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "KS_C_5601-1987"

    const-string v2, "KS_C_5601-1987"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "ISO-IR-149"

    const-string v2, "KS_C_5601-1987"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 666
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "KS_C_5601-1989"

    const-string v2, "KS_C_5601-1987"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "KSC_5601"

    const-string v2, "KS_C_5601-1987"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 668
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "KOREAN"

    const-string v2, "KS_C_5601-1987"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSKSC56011987"

    const-string v2, "KS_C_5601-1987"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "GB2312"

    const-string v2, "GB2312"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 671
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSGB2312"

    const-string v2, "GB2312"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "ISO-2022-JP"

    const-string v2, "JIS"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSISO2022JP"

    const-string v2, "JIS"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "ISO-2022-KR"

    const-string v2, "ISO2022KR"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 675
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSISO2022KR"

    const-string v2, "ISO2022KR"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "ISO-2022-CN"

    const-string v2, "ISO2022CN"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "X0201"

    const-string v2, "JIS0201"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSISO13JISC6220JP"

    const-string v2, "JIS0201"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "X0208"

    const-string v2, "JIS0208"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 681
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "ISO-IR-87"

    const-string v2, "JIS0208"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "X0208dbiJIS_X0208-1983"

    const-string v2, "JIS0208"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSISO87JISX0208"

    const-string v2, "JIS0208"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "X0212"

    const-string v2, "JIS0212"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "ISO-IR-159"

    const-string v2, "JIS0212"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSISO159JISX02121990"

    const-string v2, "JIS0212"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "GB18030"

    const-string v2, "GB18030"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "GBK"

    const-string v2, "GBK"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CP936"

    const-string v2, "GBK"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "MS936"

    const-string v2, "GBK"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "WINDOWS-936"

    const-string v2, "GBK"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "SHIFT_JIS"

    const-string v2, "SJIS"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSSHIFTJIS"

    const-string v2, "SJIS"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "MS_KANJI"

    const-string v2, "SJIS"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "WINDOWS-31J"

    const-string v2, "MS932"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSWINDOWS31J"

    const-string v2, "MS932"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "WINDOWS-1250"

    const-string v2, "Cp1250"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 700
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "WINDOWS-1251"

    const-string v2, "Cp1251"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "WINDOWS-1252"

    const-string v2, "Cp1252"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 702
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "WINDOWS-1253"

    const-string v2, "Cp1253"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "WINDOWS-1254"

    const-string v2, "Cp1254"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 704
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "WINDOWS-1255"

    const-string v2, "Cp1255"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "WINDOWS-1256"

    const-string v2, "Cp1256"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "WINDOWS-1257"

    const-string v2, "Cp1257"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "WINDOWS-1258"

    const-string v2, "Cp1258"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "TIS-620"

    const-string v2, "TIS620"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "ISO-8859-1"

    const-string v2, "ISO8859_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "ISO-IR-100"

    const-string v2, "ISO8859_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "ISO_8859-1"

    const-string v2, "ISO8859_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 713
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "LATIN1"

    const-string v2, "ISO8859_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSISOLATIN1"

    const-string v2, "ISO8859_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "L1"

    const-string v2, "ISO8859_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 716
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM819"

    const-string v2, "ISO8859_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CP819"

    const-string v2, "ISO8859_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "ISO-8859-2"

    const-string v2, "ISO8859_2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "ISO-IR-101"

    const-string v2, "ISO8859_2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "ISO_8859-2"

    const-string v2, "ISO8859_2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "LATIN2"

    const-string v2, "ISO8859_2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 723
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSISOLATIN2"

    const-string v2, "ISO8859_2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 724
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "L2"

    const-string v2, "ISO8859_2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 726
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "ISO-8859-3"

    const-string v2, "ISO8859_3"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 727
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "ISO-IR-109"

    const-string v2, "ISO8859_3"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 728
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "ISO_8859-3"

    const-string v2, "ISO8859_3"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 729
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "LATIN3"

    const-string v2, "ISO8859_3"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 730
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSISOLATIN3"

    const-string v2, "ISO8859_3"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 731
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "L3"

    const-string v2, "ISO8859_3"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "ISO-8859-4"

    const-string v2, "ISO8859_4"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "ISO-IR-110"

    const-string v2, "ISO8859_4"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 735
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "ISO_8859-4"

    const-string v2, "ISO8859_4"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 736
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "LATIN4"

    const-string v2, "ISO8859_4"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSISOLATIN4"

    const-string v2, "ISO8859_4"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 738
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "L4"

    const-string v2, "ISO8859_4"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 740
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "ISO-8859-5"

    const-string v2, "ISO8859_5"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "ISO-IR-144"

    const-string v2, "ISO8859_5"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 742
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "ISO_8859-5"

    const-string v2, "ISO8859_5"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 743
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CYRILLIC"

    const-string v2, "ISO8859_5"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSISOLATINCYRILLIC"

    const-string v2, "ISO8859_5"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "ISO-8859-6"

    const-string v2, "ISO8859_6"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 747
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "ISO-IR-127"

    const-string v2, "ISO8859_6"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "ISO_8859-6"

    const-string v2, "ISO8859_6"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 749
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "ECMA-114"

    const-string v2, "ISO8859_6"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 750
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "ASMO-708"

    const-string v2, "ISO8859_6"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "ARABIC"

    const-string v2, "ISO8859_6"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 752
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSISOLATINARABIC"

    const-string v2, "ISO8859_6"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 754
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "ISO-8859-7"

    const-string v2, "ISO8859_7"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 755
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "ISO-IR-126"

    const-string v2, "ISO8859_7"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 756
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "ISO_8859-7"

    const-string v2, "ISO8859_7"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 757
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "ELOT_928"

    const-string v2, "ISO8859_7"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 758
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "ECMA-118"

    const-string v2, "ISO8859_7"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 759
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "GREEK"

    const-string v2, "ISO8859_7"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 760
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSISOLATINGREEK"

    const-string v2, "ISO8859_7"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 761
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "GREEK8"

    const-string v2, "ISO8859_7"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 763
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "ISO-8859-8"

    const-string v2, "ISO8859_8"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 764
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "ISO-8859-8-I"

    const-string v2, "ISO8859_8"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 765
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "ISO-IR-138"

    const-string v2, "ISO8859_8"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 766
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "ISO_8859-8"

    const-string v2, "ISO8859_8"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "HEBREW"

    const-string v2, "ISO8859_8"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 768
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSISOLATINHEBREW"

    const-string v2, "ISO8859_8"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 770
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "ISO-8859-9"

    const-string v2, "ISO8859_9"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "ISO-IR-148"

    const-string v2, "ISO8859_9"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 772
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "ISO_8859-9"

    const-string v2, "ISO8859_9"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 773
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "LATIN5"

    const-string v2, "ISO8859_9"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSISOLATIN5"

    const-string v2, "ISO8859_9"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 775
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "L5"

    const-string v2, "ISO8859_9"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "ISO-8859-13"

    const-string v2, "ISO8859_13"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 779
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "ISO-8859-15"

    const-string v2, "ISO8859_15_FDIS"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 780
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "ISO_8859-15"

    const-string v2, "ISO8859_15_FDIS"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 781
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "LATIN-9"

    const-string v2, "ISO8859_15_FDIS"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 783
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "KOI8-R"

    const-string v2, "KOI8_R"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 784
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSKOI8R"

    const-string v2, "KOI8_R"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 785
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "US-ASCII"

    const-string v2, "ASCII"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 786
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "ISO-IR-6"

    const-string v2, "ASCII"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 787
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "ANSI_X3.4-1968"

    const-string v2, "ASCII"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 788
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "ANSI_X3.4-1986"

    const-string v2, "ASCII"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 789
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "ISO_646.IRV:1991"

    const-string v2, "ASCII"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 790
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "ASCII"

    const-string v2, "ASCII"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 791
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSASCII"

    const-string v2, "ASCII"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 792
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "ISO646-US"

    const-string v2, "ASCII"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 793
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "US"

    const-string v2, "ASCII"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 794
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM367"

    const-string v2, "ASCII"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 795
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CP367"

    const-string v2, "ASCII"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 796
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "UTF-8"

    const-string v2, "UTF8"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 797
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "UTF-16"

    const-string v2, "UTF-16"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 798
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "UTF-16BE"

    const-string v2, "UnicodeBig"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 799
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "UTF-16LE"

    const-string v2, "UnicodeLittle"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 804
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM-1047"

    const-string v2, "Cp1047"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 805
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM1047"

    const-string v2, "Cp1047"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 806
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CP1047"

    const-string v2, "Cp1047"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 810
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM-37"

    const-string v2, "CP037"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 811
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM-273"

    const-string v2, "CP273"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 812
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM-277"

    const-string v2, "CP277"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 813
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM-278"

    const-string v2, "CP278"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 814
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM-280"

    const-string v2, "CP280"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 815
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM-284"

    const-string v2, "CP284"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 816
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM-285"

    const-string v2, "CP285"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 817
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM-290"

    const-string v2, "CP290"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 818
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM-297"

    const-string v2, "CP297"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 819
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM-420"

    const-string v2, "CP420"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 820
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM-424"

    const-string v2, "CP424"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 821
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM-437"

    const-string v2, "CP437"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 822
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM-500"

    const-string v2, "CP500"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 823
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM-775"

    const-string v2, "CP775"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 824
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM-850"

    const-string v2, "CP850"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 825
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM-852"

    const-string v2, "CP852"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 826
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM-855"

    const-string v2, "CP855"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 827
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM-857"

    const-string v2, "CP857"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 828
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM-858"

    const-string v2, "CP858"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 829
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM-860"

    const-string v2, "CP860"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 830
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM-861"

    const-string v2, "CP861"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 831
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM-862"

    const-string v2, "CP862"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 832
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM-863"

    const-string v2, "CP863"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 833
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM-864"

    const-string v2, "CP864"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 834
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM-865"

    const-string v2, "CP865"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 835
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM-866"

    const-string v2, "CP866"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 836
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM-868"

    const-string v2, "CP868"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 837
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM-869"

    const-string v2, "CP869"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 838
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM-870"

    const-string v2, "CP870"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 839
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM-871"

    const-string v2, "CP871"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 840
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM-918"

    const-string v2, "CP918"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 841
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM-924"

    const-string v2, "CP924"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 842
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM-1026"

    const-string v2, "CP1026"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 843
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM-1140"

    const-string v2, "Cp1140"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 844
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM-1141"

    const-string v2, "Cp1141"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 845
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM-1142"

    const-string v2, "Cp1142"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 846
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM-1143"

    const-string v2, "Cp1143"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 847
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM-1144"

    const-string v2, "Cp1144"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 848
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM-1145"

    const-string v2, "Cp1145"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 849
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM-1146"

    const-string v2, "Cp1146"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 850
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM-1147"

    const-string v2, "Cp1147"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 851
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM-1148"

    const-string v2, "Cp1148"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 852
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM-1149"

    const-string v2, "Cp1149"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 853
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM-819"

    const-string v2, "ISO8859_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 854
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM-367"

    const-string v2, "ASCII"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 862
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "ISO8859_1"

    const-string v2, "ISO-8859-1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 863
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "ISO8859_2"

    const-string v2, "ISO-8859-2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 864
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "ISO8859_3"

    const-string v2, "ISO-8859-3"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 865
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "ISO8859_4"

    const-string v2, "ISO-8859-4"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 866
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "ISO8859_5"

    const-string v2, "ISO-8859-5"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 867
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "ISO8859_6"

    const-string v2, "ISO-8859-6"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 868
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "ISO8859_7"

    const-string v2, "ISO-8859-7"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 869
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "ISO8859_8"

    const-string v2, "ISO-8859-8"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 870
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "ISO8859_9"

    const-string v2, "ISO-8859-9"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 871
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "ISO8859_13"

    const-string v2, "ISO-8859-13"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 872
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "ISO8859_15"

    const-string v2, "ISO-8859-15"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 873
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "ISO8859_15_FDIS"

    const-string v2, "ISO-8859-15"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 874
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "Big5"

    const-string v2, "BIG5"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 875
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "CP037"

    const-string v2, "EBCDIC-CP-US"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 876
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "CP273"

    const-string v2, "IBM273"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 877
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "CP277"

    const-string v2, "EBCDIC-CP-DK"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 878
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "CP278"

    const-string v2, "EBCDIC-CP-FI"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 879
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "CP280"

    const-string v2, "EBCDIC-CP-IT"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 880
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "CP284"

    const-string v2, "EBCDIC-CP-ES"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 881
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "CP285"

    const-string v2, "EBCDIC-CP-GB"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 882
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "CP290"

    const-string v2, "EBCDIC-JP-KANA"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 883
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "CP297"

    const-string v2, "EBCDIC-CP-FR"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 884
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "CP420"

    const-string v2, "EBCDIC-CP-AR1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 885
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "CP424"

    const-string v2, "EBCDIC-CP-HE"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 886
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "CP437"

    const-string v2, "IBM437"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 887
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "CP500"

    const-string v2, "EBCDIC-CP-CH"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 888
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "CP775"

    const-string v2, "IBM775"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 889
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "CP850"

    const-string v2, "IBM850"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 890
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "CP852"

    const-string v2, "IBM852"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 891
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "CP855"

    const-string v2, "IBM855"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 892
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "CP857"

    const-string v2, "IBM857"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 893
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "CP858"

    const-string v2, "IBM00858"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 894
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "CP860"

    const-string v2, "IBM860"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 895
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "CP861"

    const-string v2, "IBM861"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 896
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "CP862"

    const-string v2, "IBM862"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 897
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "CP863"

    const-string v2, "IBM863"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 898
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "CP864"

    const-string v2, "IBM864"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 899
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "CP865"

    const-string v2, "IBM865"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 900
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "CP866"

    const-string v2, "IBM866"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 901
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "CP868"

    const-string v2, "IBM868"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 902
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "CP869"

    const-string v2, "IBM869"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 903
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "CP870"

    const-string v2, "EBCDIC-CP-ROECE"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 904
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "CP871"

    const-string v2, "EBCDIC-CP-IS"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 905
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "CP918"

    const-string v2, "EBCDIC-CP-AR2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 906
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "CP924"

    const-string v2, "IBM00924"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 907
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "CP1026"

    const-string v2, "IBM1026"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 908
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "CP1140"

    const-string v2, "IBM01140"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 909
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "CP1141"

    const-string v2, "IBM01141"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 910
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "CP1142"

    const-string v2, "IBM01142"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 911
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "CP1143"

    const-string v2, "IBM01143"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 912
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "CP1144"

    const-string v2, "IBM01144"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 913
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "CP1145"

    const-string v2, "IBM01145"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 914
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "CP1146"

    const-string v2, "IBM01146"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 915
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "CP1147"

    const-string v2, "IBM01147"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 916
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "CP1148"

    const-string v2, "IBM01148"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 917
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "CP1149"

    const-string v2, "IBM01149"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 918
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "EUCJIS"

    const-string v2, "EUC-JP"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 919
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "KS_C_5601-1987"

    const-string v2, "KS_C_5601-1987"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 920
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "GB2312"

    const-string v2, "GB2312"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 921
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "ISO2022KR"

    const-string v2, "ISO-2022-KR"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 922
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "ISO2022CN"

    const-string v2, "ISO-2022-CN"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 923
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "JIS"

    const-string v2, "ISO-2022-JP"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 924
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "KOI8_R"

    const-string v2, "KOI8-R"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 925
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "KSC5601"

    const-string v2, "EUC-KR"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 926
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "GB18030"

    const-string v2, "GB18030"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 927
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "GBK"

    const-string v2, "GBK"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 928
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "SJIS"

    const-string v2, "SHIFT_JIS"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 929
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "MS932"

    const-string v2, "WINDOWS-31J"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 930
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "UTF8"

    const-string v2, "UTF-8"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 931
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "Unicode"

    const-string v2, "UTF-16"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 932
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "UnicodeBig"

    const-string v2, "UTF-16BE"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 933
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "UnicodeLittle"

    const-string v2, "UTF-16LE"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 934
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "JIS0201"

    const-string v2, "X0201"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 935
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "JIS0208"

    const-string v2, "X0208"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 936
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "JIS0212"

    const-string v2, "ISO-IR-159"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 939
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "CP1047"

    const-string v2, "IBM1047"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 941
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 948
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIANA2JavaMapping(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "ianaEncoding"    # Ljava/lang/String;

    .prologue
    .line 975
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getJava2IANAMapping(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "javaEncoding"    # Ljava/lang/String;

    .prologue
    .line 1012
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static putIANA2JavaMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "ianaEncoding"    # Ljava/lang/String;
    .param p1, "javaEncoding"    # Ljava/lang/String;

    .prologue
    .line 966
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 967
    return-void
.end method

.method public static putJava2IANAMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "javaEncoding"    # Ljava/lang/String;
    .param p1, "ianaEncoding"    # Ljava/lang/String;

    .prologue
    .line 1003
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1004
    return-void
.end method

.method public static removeIANA2JavaMapping(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "ianaEncoding"    # Ljava/lang/String;

    .prologue
    .line 988
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static removeJava2IANAMapping(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "javaEncoding"    # Ljava/lang/String;

    .prologue
    .line 1025
    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
