.class final Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;
.super Ljava/lang/Object;
.source "ElementSchemePointer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/xpointer/ElementSchemePointer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Tokens"
.end annotation


# static fields
.field private static final INITIAL_TOKEN_COUNT:I = 0x100

.field private static final XPTRTOKEN_ELEM_CHILD:I = 0x1

.field private static final XPTRTOKEN_ELEM_NCNAME:I


# instance fields
.field private fCurrentTokenIndex:I

.field private fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

.field private fTokenCount:I

.field private fTokenNames:Ljava/util/HashMap;

.field private fTokens:[I

.field private final fgTokenNames:[Ljava/lang/String;

.field final synthetic this$0:Lmf/org/apache/xerces/xpointer/ElementSchemePointer;


# direct methods
.method private constructor <init>(Lmf/org/apache/xerces/xpointer/ElementSchemePointer;Lmf/org/apache/xerces/util/SymbolTable;)V
    .locals 4
    .param p2, "symbolTable"    # Lmf/org/apache/xerces/util/SymbolTable;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 535
    iput-object p1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->this$0:Lmf/org/apache/xerces/xpointer/ElementSchemePointer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 513
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "XPTRTOKEN_ELEM_NCNAME"

    aput-object v1, v0, v2

    .line 514
    const-string v1, "XPTRTOKEN_ELEM_CHILD"

    aput-object v1, v0, v3

    iput-object v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fgTokenNames:[Ljava/lang/String;

    .line 519
    const/16 v0, 0x100

    new-array v0, v0, [I

    iput-object v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fTokens:[I

    .line 521
    iput v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fTokenCount:I

    .line 528
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fTokenNames:Ljava/util/HashMap;

    .line 536
    iput-object p2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    .line 538
    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fTokenNames:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 539
    const-string v2, "XPTRTOKEN_ELEM_NCNAME"

    .line 538
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fTokenNames:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 541
    const-string v2, "XPTRTOKEN_ELEM_CHILD"

    .line 540
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    return-void
.end method

.method synthetic constructor <init>(Lmf/org/apache/xerces/xpointer/ElementSchemePointer;Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;)V
    .locals 0

    .prologue
    .line 535
    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;-><init>(Lmf/org/apache/xerces/xpointer/ElementSchemePointer;Lmf/org/apache/xerces/util/SymbolTable;)V

    return-void
.end method

.method static synthetic access$0(Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;I)V
    .locals 0

    .prologue
    .line 581
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->addToken(I)V

    return-void
.end method

.method static synthetic access$1(Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 567
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->addToken(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3(Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 549
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->getTokenString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4(Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;)I
    .locals 1

    .prologue
    .line 653
    invoke-direct {p0}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->getTokenCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$5(Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;)Z
    .locals 1

    .prologue
    .line 604
    invoke-direct {p0}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->hasMore()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6(Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 615
    invoke-direct {p0}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->nextToken()I

    move-result v0

    return v0
.end method

.method private addToken(I)V
    .locals 5
    .param p1, "token"    # I

    .prologue
    const/4 v4, 0x0

    .line 583
    :try_start_0
    iget-object v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fTokens:[I

    iget v3, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fTokenCount:I

    aput p1, v2, v3
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 590
    :goto_0
    iget v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fTokenCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fTokenCount:I

    .line 591
    return-void

    .line 584
    :catch_0
    move-exception v0

    .line 585
    .local v0, "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    iget-object v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fTokens:[I

    .line 586
    .local v1, "oldList":[I
    iget v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fTokenCount:I

    shl-int/lit8 v2, v2, 0x1

    new-array v2, v2, [I

    iput-object v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fTokens:[I

    .line 587
    iget-object v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fTokens:[I

    iget v3, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fTokenCount:I

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 588
    iget-object v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fTokens:[I

    iget v3, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fTokenCount:I

    aput p1, v2, v3

    goto :goto_0
.end method

.method private addToken(Ljava/lang/String;)V
    .locals 2
    .param p1, "tokenStr"    # Ljava/lang/String;

    .prologue
    .line 568
    iget-object v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fTokenNames:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 569
    .local v0, "tokenInt":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 570
    new-instance v0, Ljava/lang/Integer;

    .end local v0    # "tokenInt":Ljava/lang/Integer;
    iget-object v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fTokenNames:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 571
    .restart local v0    # "tokenInt":Ljava/lang/Integer;
    iget-object v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fTokenNames:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->addToken(I)V

    .line 574
    return-void
.end method

.method private getToken(I)Ljava/lang/Integer;
    .locals 2
    .param p1, "token"    # I

    .prologue
    .line 559
    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fTokenNames:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method private getTokenCount()I
    .locals 1

    .prologue
    .line 654
    iget v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fTokenCount:I

    return v0
.end method

.method private getTokenString(I)Ljava/lang/String;
    .locals 2
    .param p1, "token"    # I

    .prologue
    .line 550
    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fTokenNames:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private hasMore()Z
    .locals 2

    .prologue
    .line 605
    iget v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fCurrentTokenIndex:I

    iget v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fTokenCount:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private nextToken()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 616
    iget v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fCurrentTokenIndex:I

    iget v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fTokenCount:I

    if-ne v0, v1, :cond_0

    .line 617
    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->this$0:Lmf/org/apache/xerces/xpointer/ElementSchemePointer;

    const-string v1, "XPointerElementSchemeProcessingError"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 618
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fTokens:[I

    iget v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fCurrentTokenIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fCurrentTokenIndex:I

    aget v0, v0, v1

    return v0
.end method

.method private nextTokenAsString()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 643
    invoke-direct {p0}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->nextToken()I

    move-result v1

    invoke-direct {p0, v1}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->getTokenString(I)Ljava/lang/String;

    move-result-object v0

    .line 644
    .local v0, "s":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 645
    iget-object v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->this$0:Lmf/org/apache/xerces/xpointer/ElementSchemePointer;

    const-string v2, "XPointerElementSchemeProcessingError"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 646
    :cond_0
    return-object v0
.end method

.method private peekToken()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 629
    iget v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fCurrentTokenIndex:I

    iget v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fTokenCount:I

    if-ne v0, v1, :cond_0

    .line 630
    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->this$0:Lmf/org/apache/xerces/xpointer/ElementSchemePointer;

    const-string v1, "XPointerElementSchemeProcessingError"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 631
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fTokens:[I

    iget v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fCurrentTokenIndex:I

    aget v0, v0, v1

    return v0
.end method

.method private rewind()V
    .locals 1

    .prologue
    .line 597
    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fCurrentTokenIndex:I

    .line 598
    return-void
.end method
