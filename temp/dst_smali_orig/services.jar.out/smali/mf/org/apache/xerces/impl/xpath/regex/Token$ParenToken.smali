.class Lmf/org/apache/xerces/impl/xpath/regex/Token$ParenToken;
.super Lmf/org/apache/xerces/impl/xpath/regex/Token;
.source "Token.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/xpath/regex/Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ParenToken"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x526810ed3e634cf8L


# instance fields
.field final child:Lmf/org/apache/xerces/impl/xpath/regex/Token;

.field final parennumber:I


# direct methods
.method constructor <init>(ILmf/org/apache/xerces/impl/xpath/regex/Token;I)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "tok"    # Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .param p3, "paren"    # I

    .prologue
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;-><init>(I)V

    iput-object p2, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ParenToken;->child:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    iput p3, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ParenToken;->parennumber:I

    return-void
.end method


# virtual methods
.method getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 1
    .param p1, "index"    # I

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ParenToken;->child:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    return-object v0
.end method

.method getParenNumber()I
    .locals 1

    .prologue
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ParenToken;->parennumber:I

    return v0
.end method

.method size()I
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 3
    .param p1, "options"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "ret":Ljava/lang/String;
    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ParenToken;->type:I

    sparse-switch v1, :sswitch_data_0

    :goto_0
    return-object v0

    :sswitch_0
    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ParenToken;->parennumber:I

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(?:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ParenToken;->child:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-virtual {v2, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ParenToken;->child:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-virtual {v2, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(?="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ParenToken;->child:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-virtual {v2, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(?!"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ParenToken;->child:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-virtual {v2, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(?<="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ParenToken;->child:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-virtual {v2, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(?<!"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ParenToken;->child:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-virtual {v2, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(?>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ParenToken;->child:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-virtual {v2, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0x14 -> :sswitch_1
        0x15 -> :sswitch_2
        0x16 -> :sswitch_3
        0x17 -> :sswitch_4
        0x18 -> :sswitch_5
    .end sparse-switch
.end method
