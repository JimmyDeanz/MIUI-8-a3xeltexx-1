.class public final Lmf/org/apache/xerces/parsers/CachingParserPool$ShadowedGrammarPool;
.super Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;
.source "CachingParserPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/parsers/CachingParserPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ShadowedGrammarPool"
.end annotation


# instance fields
.field private fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;)V
    .locals 0
    .param p1, "grammarPool"    # Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    .prologue
    invoke-direct {p0}, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xerces/parsers/CachingParserPool$ShadowedGrammarPool;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    return-void
.end method


# virtual methods
.method public cacheGrammars(Ljava/lang/String;[Lmf/org/apache/xerces/xni/grammars/Grammar;)V
    .locals 1
    .param p1, "grammarType"    # Ljava/lang/String;
    .param p2, "grammars"    # [Lmf/org/apache/xerces/xni/grammars/Grammar;

    .prologue
    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->cacheGrammars(Ljava/lang/String;[Lmf/org/apache/xerces/xni/grammars/Grammar;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/CachingParserPool$ShadowedGrammarPool;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;->cacheGrammars(Ljava/lang/String;[Lmf/org/apache/xerces/xni/grammars/Grammar;)V

    return-void
.end method

.method public containsGrammar(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Z
    .locals 1
    .param p1, "desc"    # Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

    .prologue
    invoke-super {p0, p1}, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->containsGrammar(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Z

    move-result v0

    return v0
.end method

.method public getGrammar(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Lmf/org/apache/xerces/xni/grammars/Grammar;
    .locals 1
    .param p1, "desc"    # Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

    .prologue
    invoke-super {p0, p1}, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->containsGrammar(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->getGrammar(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Lmf/org/apache/xerces/xni/grammars/Grammar;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public retrieveGrammar(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Lmf/org/apache/xerces/xni/grammars/Grammar;
    .locals 2
    .param p1, "gDesc"    # Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

    .prologue
    invoke-super {p0, p1}, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->retrieveGrammar(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Lmf/org/apache/xerces/xni/grammars/Grammar;

    move-result-object v0

    .local v0, "g":Lmf/org/apache/xerces/xni/grammars/Grammar;
    if-eqz v0, :cond_0

    .end local v0    # "g":Lmf/org/apache/xerces/xni/grammars/Grammar;
    :goto_0
    return-object v0

    .restart local v0    # "g":Lmf/org/apache/xerces/xni/grammars/Grammar;
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/CachingParserPool$ShadowedGrammarPool;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    invoke-interface {v1, p1}, Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;->retrieveGrammar(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Lmf/org/apache/xerces/xni/grammars/Grammar;

    move-result-object v0

    goto :goto_0
.end method

.method public retrieveInitialGrammarSet(Ljava/lang/String;)[Lmf/org/apache/xerces/xni/grammars/Grammar;
    .locals 2
    .param p1, "grammarType"    # Ljava/lang/String;

    .prologue
    invoke-super {p0, p1}, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->retrieveInitialGrammarSet(Ljava/lang/String;)[Lmf/org/apache/xerces/xni/grammars/Grammar;

    move-result-object v0

    .local v0, "grammars":[Lmf/org/apache/xerces/xni/grammars/Grammar;
    if-eqz v0, :cond_0

    .end local v0    # "grammars":[Lmf/org/apache/xerces/xni/grammars/Grammar;
    :goto_0
    return-object v0

    .restart local v0    # "grammars":[Lmf/org/apache/xerces/xni/grammars/Grammar;
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/CachingParserPool$ShadowedGrammarPool;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    invoke-interface {v1, p1}, Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;->retrieveInitialGrammarSet(Ljava/lang/String;)[Lmf/org/apache/xerces/xni/grammars/Grammar;

    move-result-object v0

    goto :goto_0
.end method
