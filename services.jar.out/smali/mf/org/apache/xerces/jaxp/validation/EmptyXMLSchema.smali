.class final Lmf/org/apache/xerces/jaxp/validation/EmptyXMLSchema;
.super Lmf/org/apache/xerces/jaxp/validation/AbstractXMLSchema;
.source "EmptyXMLSchema.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;


# static fields
.field private static final ZERO_LENGTH_GRAMMAR_ARRAY:[Lmf/org/apache/xerces/xni/grammars/Grammar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    new-array v0, v0, [Lmf/org/apache/xerces/xni/grammars/Grammar;

    sput-object v0, Lmf/org/apache/xerces/jaxp/validation/EmptyXMLSchema;->ZERO_LENGTH_GRAMMAR_ARRAY:[Lmf/org/apache/xerces/xni/grammars/Grammar;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/validation/AbstractXMLSchema;-><init>()V

    return-void
.end method


# virtual methods
.method public cacheGrammars(Ljava/lang/String;[Lmf/org/apache/xerces/xni/grammars/Grammar;)V
    .locals 0
    .param p1, "grammarType"    # Ljava/lang/String;
    .param p2, "grammars"    # [Lmf/org/apache/xerces/xni/grammars/Grammar;

    .prologue
    .line 46
    return-void
.end method

.method public clear()V
    .locals 0

    .prologue
    .line 56
    return-void
.end method

.method public getGrammarPool()Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;
    .locals 0

    .prologue
    .line 63
    return-object p0
.end method

.method public isFullyComposed()Z
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x1

    return v0
.end method

.method public lockPool()V
    .locals 0

    .prologue
    .line 52
    return-void
.end method

.method public retrieveGrammar(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Lmf/org/apache/xerces/xni/grammars/Grammar;
    .locals 1
    .param p1, "desc"    # Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

    .prologue
    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method public retrieveInitialGrammarSet(Ljava/lang/String;)[Lmf/org/apache/xerces/xni/grammars/Grammar;
    .locals 1
    .param p1, "grammarType"    # Ljava/lang/String;

    .prologue
    .line 43
    sget-object v0, Lmf/org/apache/xerces/jaxp/validation/EmptyXMLSchema;->ZERO_LENGTH_GRAMMAR_ARRAY:[Lmf/org/apache/xerces/xni/grammars/Grammar;

    return-object v0
.end method

.method public unlockPool()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method
