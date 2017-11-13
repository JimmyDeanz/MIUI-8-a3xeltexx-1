.class public Lmf/org/apache/xerces/impl/dtd/DTDGrammar;
.super Ljava/lang/Object;
.source "DTDGrammar.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/XMLDTDHandler;
.implements Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;
.implements Lmf/org/apache/xerces/impl/validation/EntityState;
.implements Lmf/org/apache/xerces/xni/grammars/Grammar;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/impl/dtd/DTDGrammar$ChildrenList;,
        Lmf/org/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;
    }
.end annotation


# static fields
.field private static final CHUNK_MASK:I = 0xff

.field private static final CHUNK_SHIFT:I = 0x8

.field private static final CHUNK_SIZE:I = 0x100

.field private static final DEBUG:Z = false

.field private static final INITIAL_CHUNK_COUNT:I = 0x4

.field private static final LIST_FLAG:S = 0x80s

.field private static final LIST_MASK:S = -0x81s

.field public static final TOP_LEVEL_SCOPE:I = -0x1


# instance fields
.field protected final fAttributeDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

.field private fAttributeDeclCount:I

.field private fAttributeDeclDatatypeValidator:[[Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

.field private fAttributeDeclDefaultType:[[S

.field private fAttributeDeclDefaultValue:[[Ljava/lang/String;

.field private fAttributeDeclEnumeration:[[[Ljava/lang/String;

.field private fAttributeDeclIsExternal:[[I

.field private fAttributeDeclName:[[Lmf/org/apache/xerces/xni/QName;

.field private fAttributeDeclNextAttributeDeclIndex:[[I

.field private fAttributeDeclNonNormalizedDefaultValue:[[Ljava/lang/String;

.field private fAttributeDeclType:[[S

.field private fContentSpec:Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;

.field private fContentSpecCount:I

.field private fContentSpecOtherValue:[[Ljava/lang/Object;

.field private fContentSpecType:[[S

.field private fContentSpecValue:[[Ljava/lang/Object;

.field protected fCurrentAttributeIndex:I

.field protected fCurrentElementIndex:I

.field protected fDTDContentModelSource:Lmf/org/apache/xerces/xni/parser/XMLDTDContentModelSource;

.field protected fDTDSource:Lmf/org/apache/xerces/xni/parser/XMLDTDSource;

.field private fDepth:I

.field private fElementDecl:Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;

.field private fElementDeclContentModelValidator:[[Lmf/org/apache/xerces/impl/dtd/models/ContentModelValidator;

.field private fElementDeclContentSpecIndex:[[I

.field private fElementDeclCount:I

.field private fElementDeclFirstAttributeDeclIndex:[[I

.field private fElementDeclIsExternal:[[I

.field private fElementDeclLastAttributeDeclIndex:[[I

.field private fElementDeclName:[[Lmf/org/apache/xerces/xni/QName;

.field fElementDeclTab:Ljava/util/Hashtable;

.field private fElementDeclType:[[S

.field private fElementIndexMap:Lmf/org/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;

.field private fEntityBaseSystemId:[[Ljava/lang/String;

.field private fEntityCount:I

.field private fEntityDecl:Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;

.field private fEntityInExternal:[[B

.field private fEntityIndexMap:Lmf/org/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;

.field private fEntityIsPE:[[B

.field private fEntityName:[[Ljava/lang/String;

.field private fEntityNotation:[[Ljava/lang/String;

.field private fEntityPublicId:[[Ljava/lang/String;

.field private fEntitySystemId:[[Ljava/lang/String;

.field private fEntityValue:[[Ljava/lang/String;

.field private fEpsilonIndex:I

.field protected fGrammarDescription:Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;

.field private fIsImmutable:Z

.field private fLeafCount:I

.field private fMixed:Z

.field private fNodeIndexStack:[I

.field private fNotationBaseSystemId:[[Ljava/lang/String;

.field private fNotationCount:I

.field private fNotationIndexMap:Lmf/org/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;

.field private fNotationName:[[Ljava/lang/String;

.field private fNotationPublicId:[[Ljava/lang/String;

.field private fNotationSystemId:[[Ljava/lang/String;

.field private fOpStack:[S

.field private fPEDepth:I

.field private fPEntityStack:[Z

.field private fPrevNodeIndexStack:[I

.field private final fQName:Lmf/org/apache/xerces/xni/QName;

.field private final fQName2:Lmf/org/apache/xerces/xni/QName;

.field protected fReadingExternalDTD:Z

.field private fSimpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

.field private fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

.field nodeIndex:I

.field prevNodeIndex:I

.field valueIndex:I


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;)V
    .locals 5
    .param p1, "symbolTable"    # Lmf/org/apache/xerces/util/SymbolTable;
    .param p2, "desc"    # Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDTDSource:Lmf/org/apache/xerces/xni/parser/XMLDTDSource;

    iput-object v3, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDTDContentModelSource:Lmf/org/apache/xerces/xni/parser/XMLDTDContentModelSource;

    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fReadingExternalDTD:Z

    iput-object v3, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fGrammarDescription:Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;

    iput v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclCount:I

    new-array v0, v1, [[Lmf/org/apache/xerces/xni/QName;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclName:[[Lmf/org/apache/xerces/xni/QName;

    new-array v0, v1, [[S

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclType:[[S

    new-array v0, v1, [[I

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclContentSpecIndex:[[I

    new-array v0, v1, [[Lmf/org/apache/xerces/impl/dtd/models/ContentModelValidator;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclContentModelValidator:[[Lmf/org/apache/xerces/impl/dtd/models/ContentModelValidator;

    new-array v0, v1, [[I

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclFirstAttributeDeclIndex:[[I

    new-array v0, v1, [[I

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclLastAttributeDeclIndex:[[I

    iput v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclCount:I

    new-array v0, v1, [[Lmf/org/apache/xerces/xni/QName;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclName:[[Lmf/org/apache/xerces/xni/QName;

    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fIsImmutable:Z

    new-array v0, v1, [[S

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclType:[[S

    new-array v0, v1, [[[Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclEnumeration:[[[Ljava/lang/String;

    new-array v0, v1, [[S

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclDefaultType:[[S

    new-array v0, v1, [[Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclDatatypeValidator:[[Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    new-array v0, v1, [[Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclDefaultValue:[[Ljava/lang/String;

    new-array v0, v1, [[Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclNonNormalizedDefaultValue:[[Ljava/lang/String;

    new-array v0, v1, [[I

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclNextAttributeDeclIndex:[[I

    iput v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fContentSpecCount:I

    new-array v0, v1, [[S

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fContentSpecType:[[S

    new-array v0, v1, [[Ljava/lang/Object;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fContentSpecValue:[[Ljava/lang/Object;

    new-array v0, v1, [[Ljava/lang/Object;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fContentSpecOtherValue:[[Ljava/lang/Object;

    iput v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityCount:I

    new-array v0, v1, [[Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityName:[[Ljava/lang/String;

    new-array v0, v1, [[Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityValue:[[Ljava/lang/String;

    new-array v0, v1, [[Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityPublicId:[[Ljava/lang/String;

    new-array v0, v1, [[Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntitySystemId:[[Ljava/lang/String;

    new-array v0, v1, [[Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityBaseSystemId:[[Ljava/lang/String;

    new-array v0, v1, [[Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityNotation:[[Ljava/lang/String;

    new-array v0, v1, [[B

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityIsPE:[[B

    new-array v0, v1, [[B

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityInExternal:[[B

    iput v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNotationCount:I

    new-array v0, v1, [[Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNotationName:[[Ljava/lang/String;

    new-array v0, v1, [[Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNotationPublicId:[[Ljava/lang/String;

    new-array v0, v1, [[Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNotationSystemId:[[Ljava/lang/String;

    new-array v0, v1, [[Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNotationBaseSystemId:[[Ljava/lang/String;

    new-instance v0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementIndexMap:Lmf/org/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;

    new-instance v0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityIndexMap:Lmf/org/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;

    new-instance v0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNotationIndexMap:Lmf/org/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;

    new-instance v0, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fQName:Lmf/org/apache/xerces/xni/QName;

    new-instance v0, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fQName2:Lmf/org/apache/xerces/xni/QName;

    new-instance v0, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    iput v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fLeafCount:I

    iput v4, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEpsilonIndex:I

    new-instance v0, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDecl:Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;

    new-instance v0, Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityDecl:Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;

    new-instance v0, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fSimpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    new-instance v0, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fContentSpec:Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclTab:Ljava/util/Hashtable;

    iput-object v3, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fOpStack:[S

    iput-object v3, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNodeIndexStack:[I

    iput-object v3, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fPrevNodeIndexStack:[I

    iput v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    new-array v0, v1, [Z

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fPEntityStack:[Z

    iput v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fPEDepth:I

    new-array v0, v1, [[I

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclIsExternal:[[I

    new-array v0, v1, [[I

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclIsExternal:[[I

    iput v4, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->valueIndex:I

    iput v4, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->prevNodeIndex:I

    iput v4, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->nodeIndex:I

    iput-object p1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fGrammarDescription:Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;

    return-void
.end method

.method private appendContentSpec(Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;Ljava/lang/StringBuffer;ZI)V
    .locals 9
    .param p1, "contentSpec"    # Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;
    .param p2, "str"    # Ljava/lang/StringBuffer;
    .param p3, "parens"    # Z
    .param p4, "parentContentSpecType"    # I

    .prologue
    const/4 v8, 0x2

    const/16 v7, 0x29

    const/16 v6, 0x28

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-short v3, p1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    and-int/lit8 v1, v3, 0xf

    .local v1, "thisContentSpec":I
    packed-switch v1, :pswitch_data_0

    const-string v3, "???"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v3, p1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    if-nez v3, :cond_1

    iget-object v3, p1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    if-nez v3, :cond_1

    const-string v3, "#PCDATA"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    iget-object v3, p1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    if-nez v3, :cond_2

    iget-object v3, p1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    if-eqz v3, :cond_2

    const-string v3, "##any:uri="

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    iget-object v3, p1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    if-nez v3, :cond_3

    const-string v3, "##any"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_3
    iget-object v3, p1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_1
    const/4 v3, 0x3

    if-eq p4, v3, :cond_4

    if-eq p4, v8, :cond_4

    if-ne p4, v4, :cond_5

    :cond_4
    iget-object v3, p1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    check-cast v3, [I

    aget v3, v3, v5

    invoke-virtual {p0, v3, p1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getContentSpec(ILmf/org/apache/xerces/impl/dtd/XMLContentSpec;)Z

    invoke-virtual {p2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-direct {p0, p1, p2, v4, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->appendContentSpec(Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;Ljava/lang/StringBuffer;ZI)V

    invoke-virtual {p2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    const/16 v3, 0x3f

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_5
    iget-object v3, p1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    check-cast v3, [I

    aget v3, v3, v5

    invoke-virtual {p0, v3, p1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getContentSpec(ILmf/org/apache/xerces/impl/dtd/XMLContentSpec;)Z

    invoke-direct {p0, p1, p2, v4, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->appendContentSpec(Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;Ljava/lang/StringBuffer;ZI)V

    goto :goto_1

    :pswitch_2
    const/4 v3, 0x3

    if-eq p4, v3, :cond_6

    if-eq p4, v8, :cond_6

    if-ne p4, v4, :cond_7

    :cond_6
    iget-object v3, p1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    check-cast v3, [I

    aget v3, v3, v5

    invoke-virtual {p0, v3, p1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getContentSpec(ILmf/org/apache/xerces/impl/dtd/XMLContentSpec;)Z

    invoke-virtual {p2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-direct {p0, p1, p2, v4, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->appendContentSpec(Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;Ljava/lang/StringBuffer;ZI)V

    invoke-virtual {p2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_2
    const/16 v3, 0x2a

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_7
    iget-object v3, p1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    check-cast v3, [I

    aget v3, v3, v5

    invoke-virtual {p0, v3, p1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getContentSpec(ILmf/org/apache/xerces/impl/dtd/XMLContentSpec;)Z

    invoke-direct {p0, p1, p2, v4, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->appendContentSpec(Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;Ljava/lang/StringBuffer;ZI)V

    goto :goto_2

    :pswitch_3
    const/4 v3, 0x3

    if-eq p4, v3, :cond_8

    if-eq p4, v8, :cond_8

    if-ne p4, v4, :cond_9

    :cond_8
    invoke-virtual {p2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v3, p1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    check-cast v3, [I

    aget v3, v3, v5

    invoke-virtual {p0, v3, p1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getContentSpec(ILmf/org/apache/xerces/impl/dtd/XMLContentSpec;)Z

    invoke-direct {p0, p1, p2, v4, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->appendContentSpec(Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;Ljava/lang/StringBuffer;ZI)V

    invoke-virtual {p2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_3
    const/16 v3, 0x2b

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :cond_9
    iget-object v3, p1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    check-cast v3, [I

    aget v3, v3, v5

    invoke-virtual {p0, v3, p1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getContentSpec(ILmf/org/apache/xerces/impl/dtd/XMLContentSpec;)Z

    invoke-direct {p0, p1, p2, v4, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->appendContentSpec(Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;Ljava/lang/StringBuffer;ZI)V

    goto :goto_3

    :pswitch_4
    if-eqz p3, :cond_a

    invoke-virtual {p2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_a
    iget-short v2, p1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    .local v2, "type":I
    iget-object v3, p1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    check-cast v3, [I

    aget v0, v3, v5

    .local v0, "otherValue":I
    iget-object v3, p1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    check-cast v3, [I

    aget v3, v3, v5

    invoke-virtual {p0, v3, p1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getContentSpec(ILmf/org/apache/xerces/impl/dtd/XMLContentSpec;)Z

    iget-short v3, p1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    if-eq v3, v2, :cond_b

    move v3, v4

    :goto_4
    invoke-direct {p0, p1, p2, v3, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->appendContentSpec(Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;Ljava/lang/StringBuffer;ZI)V

    const/4 v3, 0x4

    if-ne v2, v3, :cond_c

    const/16 v3, 0x7c

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_5
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getContentSpec(ILmf/org/apache/xerces/impl/dtd/XMLContentSpec;)Z

    invoke-direct {p0, p1, p2, v4, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->appendContentSpec(Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;Ljava/lang/StringBuffer;ZI)V

    if-eqz p3, :cond_0

    invoke-virtual {p2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :cond_b
    move v3, v5

    goto :goto_4

    :cond_c
    const/16 v3, 0x2c

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5

    .end local v0    # "otherValue":I
    .end local v2    # "type":I
    :pswitch_5
    const-string v3, "##any"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    if-eqz v3, :cond_0

    const-string v3, ":uri="

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :pswitch_6
    const-string v3, "##other:uri="

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :pswitch_7
    const-string v3, "##local"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private final buildSyntaxTree(ILmf/org/apache/xerces/impl/dtd/XMLContentSpec;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    .locals 8
    .param p1, "startNode"    # I
    .param p2, "contentSpec"    # Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v1, 0x0

    .local v1, "nodeRet":Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getContentSpec(ILmf/org/apache/xerces/impl/dtd/XMLContentSpec;)Z

    iget-short v3, p2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    and-int/lit8 v3, v3, 0xf

    const/4 v4, 0x6

    if-ne v3, v4, :cond_0

    new-instance v1, Lmf/org/apache/xerces/impl/dtd/models/CMAny;

    .end local v1    # "nodeRet":Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    iget-short v4, p2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    iget-object v3, p2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget v5, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fLeafCount:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fLeafCount:I

    invoke-direct {v1, v4, v3, v5}, Lmf/org/apache/xerces/impl/dtd/models/CMAny;-><init>(ILjava/lang/String;I)V

    .restart local v1    # "nodeRet":Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    :goto_0
    return-object v1

    :cond_0
    iget-short v3, p2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    and-int/lit8 v3, v3, 0xf

    const/4 v4, 0x7

    if-ne v3, v4, :cond_1

    new-instance v1, Lmf/org/apache/xerces/impl/dtd/models/CMAny;

    .end local v1    # "nodeRet":Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    iget-short v4, p2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    iget-object v3, p2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget v5, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fLeafCount:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fLeafCount:I

    invoke-direct {v1, v4, v3, v5}, Lmf/org/apache/xerces/impl/dtd/models/CMAny;-><init>(ILjava/lang/String;I)V

    .restart local v1    # "nodeRet":Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    goto :goto_0

    :cond_1
    iget-short v3, p2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    and-int/lit8 v3, v3, 0xf

    const/16 v4, 0x8

    if-ne v3, v4, :cond_2

    new-instance v1, Lmf/org/apache/xerces/impl/dtd/models/CMAny;

    .end local v1    # "nodeRet":Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    iget-short v3, p2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    iget v4, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fLeafCount:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fLeafCount:I

    invoke-direct {v1, v3, v7, v4}, Lmf/org/apache/xerces/impl/dtd/models/CMAny;-><init>(ILjava/lang/String;I)V

    .restart local v1    # "nodeRet":Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    goto :goto_0

    :cond_2
    iget-short v3, p2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    if-nez v3, :cond_3

    iget-object v6, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, p2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, p2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, p2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v7, v3, v4, v5}, Lmf/org/apache/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lmf/org/apache/xerces/impl/dtd/models/CMLeaf;

    .end local v1    # "nodeRet":Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fQName:Lmf/org/apache/xerces/xni/QName;

    iget v4, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fLeafCount:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fLeafCount:I

    invoke-direct {v1, v3, v4}, Lmf/org/apache/xerces/impl/dtd/models/CMLeaf;-><init>(Lmf/org/apache/xerces/xni/QName;I)V

    .restart local v1    # "nodeRet":Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    goto :goto_0

    :cond_3
    iget-object v3, p2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    check-cast v3, [I

    aget v0, v3, v5

    .local v0, "leftNode":I
    iget-object v3, p2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    check-cast v3, [I

    aget v2, v3, v5

    .local v2, "rightNode":I
    iget-short v3, p2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    const/4 v4, 0x4

    if-eq v3, v4, :cond_4

    iget-short v3, p2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    const/4 v4, 0x5

    if-ne v3, v4, :cond_5

    :cond_4
    new-instance v1, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;

    .end local v1    # "nodeRet":Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    iget-short v3, p2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    invoke-direct {p0, v0, p2}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->buildSyntaxTree(ILmf/org/apache/xerces/impl/dtd/XMLContentSpec;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v4

    invoke-direct {p0, v2, p2}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->buildSyntaxTree(ILmf/org/apache/xerces/impl/dtd/XMLContentSpec;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v5

    invoke-direct {v1, v3, v4, v5}, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;-><init>(ILmf/org/apache/xerces/impl/dtd/models/CMNode;Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V

    .restart local v1    # "nodeRet":Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    goto :goto_0

    :cond_5
    iget-short v3, p2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    if-ne v3, v6, :cond_6

    new-instance v1, Lmf/org/apache/xerces/impl/dtd/models/CMUniOp;

    .end local v1    # "nodeRet":Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    iget-short v3, p2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    invoke-direct {p0, v0, p2}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->buildSyntaxTree(ILmf/org/apache/xerces/impl/dtd/XMLContentSpec;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lmf/org/apache/xerces/impl/dtd/models/CMUniOp;-><init>(ILmf/org/apache/xerces/impl/dtd/models/CMNode;)V

    .restart local v1    # "nodeRet":Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    goto/16 :goto_0

    :cond_6
    iget-short v3, p2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    if-eq v3, v6, :cond_7

    iget-short v3, p2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    const/4 v4, 0x1

    if-eq v3, v4, :cond_7

    iget-short v3, p2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    const/4 v4, 0x3

    if-ne v3, v4, :cond_8

    :cond_7
    new-instance v1, Lmf/org/apache/xerces/impl/dtd/models/CMUniOp;

    .end local v1    # "nodeRet":Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    iget-short v3, p2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    invoke-direct {p0, v0, p2}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->buildSyntaxTree(ILmf/org/apache/xerces/impl/dtd/XMLContentSpec;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lmf/org/apache/xerces/impl/dtd/models/CMUniOp;-><init>(ILmf/org/apache/xerces/impl/dtd/models/CMNode;)V

    .restart local v1    # "nodeRet":Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    goto/16 :goto_0

    :cond_8
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "ImplementationMessages.VAL_CST"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private contentSpecTree(ILmf/org/apache/xerces/impl/dtd/XMLContentSpec;Lmf/org/apache/xerces/impl/dtd/DTDGrammar$ChildrenList;)V
    .locals 11
    .param p1, "contentSpecIndex"    # I
    .param p2, "contentSpec"    # Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;
    .param p3, "children"    # Lmf/org/apache/xerces/impl/dtd/DTDGrammar$ChildrenList;

    .prologue
    const/4 v6, 0x0

    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getContentSpec(ILmf/org/apache/xerces/impl/dtd/XMLContentSpec;)Z

    iget-short v4, p2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    if-eqz v4, :cond_0

    iget-short v4, p2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    and-int/lit8 v4, v4, 0xf

    const/4 v5, 0x6

    if-eq v4, v5, :cond_0

    iget-short v4, p2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    and-int/lit8 v4, v4, 0xf

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    iget-short v4, p2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    and-int/lit8 v4, v4, 0xf

    const/4 v5, 0x7

    if-ne v4, v5, :cond_3

    :cond_0
    iget v4, p3, Lmf/org/apache/xerces/impl/dtd/DTDGrammar$ChildrenList;->length:I

    iget-object v5, p3, Lmf/org/apache/xerces/impl/dtd/DTDGrammar$ChildrenList;->qname:[Lmf/org/apache/xerces/xni/QName;

    array-length v5, v5

    if-ne v4, v5, :cond_1

    iget v4, p3, Lmf/org/apache/xerces/impl/dtd/DTDGrammar$ChildrenList;->length:I

    mul-int/lit8 v4, v4, 0x2

    new-array v1, v4, [Lmf/org/apache/xerces/xni/QName;

    .local v1, "newQName":[Lmf/org/apache/xerces/xni/QName;
    iget-object v4, p3, Lmf/org/apache/xerces/impl/dtd/DTDGrammar$ChildrenList;->qname:[Lmf/org/apache/xerces/xni/QName;

    iget v5, p3, Lmf/org/apache/xerces/impl/dtd/DTDGrammar$ChildrenList;->length:I

    invoke-static {v4, v6, v1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p3, Lmf/org/apache/xerces/impl/dtd/DTDGrammar$ChildrenList;->qname:[Lmf/org/apache/xerces/xni/QName;

    iget v4, p3, Lmf/org/apache/xerces/impl/dtd/DTDGrammar$ChildrenList;->length:I

    mul-int/lit8 v4, v4, 0x2

    new-array v2, v4, [I

    .local v2, "newType":[I
    iget-object v4, p3, Lmf/org/apache/xerces/impl/dtd/DTDGrammar$ChildrenList;->type:[I

    iget v5, p3, Lmf/org/apache/xerces/impl/dtd/DTDGrammar$ChildrenList;->length:I

    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p3, Lmf/org/apache/xerces/impl/dtd/DTDGrammar$ChildrenList;->type:[I

    .end local v1    # "newQName":[Lmf/org/apache/xerces/xni/QName;
    .end local v2    # "newType":[I
    :cond_1
    iget-object v7, p3, Lmf/org/apache/xerces/impl/dtd/DTDGrammar$ChildrenList;->qname:[Lmf/org/apache/xerces/xni/QName;

    iget v8, p3, Lmf/org/apache/xerces/impl/dtd/DTDGrammar$ChildrenList;->length:I

    new-instance v9, Lmf/org/apache/xerces/xni/QName;

    const/4 v10, 0x0

    iget-object v4, p2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, p2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, p2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-direct {v9, v10, v4, v5, v6}, Lmf/org/apache/xerces/xni/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v9, v7, v8

    iget-object v4, p3, Lmf/org/apache/xerces/impl/dtd/DTDGrammar$ChildrenList;->type:[I

    iget v5, p3, Lmf/org/apache/xerces/impl/dtd/DTDGrammar$ChildrenList;->length:I

    iget-short v6, p2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    aput v6, v4, v5

    iget v4, p3, Lmf/org/apache/xerces/impl/dtd/DTDGrammar$ChildrenList;->length:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p3, Lmf/org/apache/xerces/impl/dtd/DTDGrammar$ChildrenList;->length:I

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v4, p2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    if-eqz v4, :cond_5

    iget-object v4, p2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    check-cast v4, [I

    aget v0, v4, v6

    .local v0, "leftNode":I
    :goto_1
    const/4 v3, -0x1

    .local v3, "rightNode":I
    iget-object v4, p2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    if-eqz v4, :cond_2

    iget-object v4, p2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    check-cast v4, [I

    aget v3, v4, v6

    iget-short v4, p2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    const/4 v5, 0x4

    if-eq v4, v5, :cond_4

    iget-short v4, p2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    const/4 v5, 0x5

    if-ne v4, v5, :cond_6

    :cond_4
    invoke-direct {p0, v0, p2, p3}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->contentSpecTree(ILmf/org/apache/xerces/impl/dtd/XMLContentSpec;Lmf/org/apache/xerces/impl/dtd/DTDGrammar$ChildrenList;)V

    invoke-direct {p0, v3, p2, p3}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->contentSpecTree(ILmf/org/apache/xerces/impl/dtd/XMLContentSpec;Lmf/org/apache/xerces/impl/dtd/DTDGrammar$ChildrenList;)V

    goto :goto_0

    .end local v0    # "leftNode":I
    .end local v3    # "rightNode":I
    :cond_5
    const/4 v0, -0x1

    goto :goto_1

    .restart local v0    # "leftNode":I
    .restart local v3    # "rightNode":I
    :cond_6
    iget-short v4, p2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    const/4 v5, 0x1

    if-eq v4, v5, :cond_7

    iget-short v4, p2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    const/4 v5, 0x2

    if-eq v4, v5, :cond_7

    iget-short v4, p2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    const/4 v5, 0x3

    if-ne v4, v5, :cond_8

    :cond_7
    invoke-direct {p0, v0, p2, p3}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->contentSpecTree(ILmf/org/apache/xerces/impl/dtd/XMLContentSpec;Lmf/org/apache/xerces/impl/dtd/DTDGrammar$ChildrenList;)V

    goto :goto_0

    :cond_8
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Invalid content spec type seen in contentSpecTree() method of AbstractDTDGrammar class : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-short v6, p2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private declared-synchronized createChildModel(I)Lmf/org/apache/xerces/impl/dtd/models/ContentModelValidator;
    .locals 9
    .param p1, "contentSpecIndex"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    new-instance v1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;-><init>()V

    .local v1, "contentSpec":Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;
    invoke-virtual {p0, p1, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getContentSpec(ILmf/org/apache/xerces/impl/dtd/XMLContentSpec;)Z

    iget-short v4, v1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    and-int/lit8 v4, v4, 0xf

    const/4 v5, 0x6

    if-eq v4, v5, :cond_6

    iget-short v4, v1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    and-int/lit8 v4, v4, 0xf

    const/4 v5, 0x7

    if-eq v4, v5, :cond_6

    iget-short v4, v1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    and-int/lit8 v4, v4, 0xf

    const/16 v5, 0x8

    if-eq v4, v5, :cond_6

    iget-short v4, v1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    if-nez v4, :cond_1

    iget-object v4, v1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    if-nez v4, :cond_0

    iget-object v4, v1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "ImplementationMessages.VAL_NPCD"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "contentSpec":Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .restart local v1    # "contentSpec":Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;
    :cond_0
    :try_start_1
    iget-object v7, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fQName:Lmf/org/apache/xerces/xni/QName;

    const/4 v8, 0x0

    iget-object v4, v1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, v1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v8, v4, v5, v6}, Lmf/org/apache/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lmf/org/apache/xerces/impl/dtd/models/SimpleContentModel;

    iget-short v5, v1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    iget-object v6, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fQName:Lmf/org/apache/xerces/xni/QName;

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lmf/org/apache/xerces/impl/dtd/models/SimpleContentModel;-><init>(SLmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/QName;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v4

    :cond_1
    :try_start_2
    iget-short v4, v1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    const/4 v5, 0x4

    if-eq v4, v5, :cond_2

    iget-short v4, v1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    const/4 v5, 0x5

    if-ne v4, v5, :cond_3

    :cond_2
    new-instance v2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;-><init>()V

    .local v2, "contentSpecLeft":Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;
    new-instance v3, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;

    invoke-direct {v3}, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;-><init>()V

    .local v3, "contentSpecRight":Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;
    iget-object v4, v1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    check-cast v4, [I

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-virtual {p0, v4, v2}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getContentSpec(ILmf/org/apache/xerces/impl/dtd/XMLContentSpec;)Z

    iget-object v4, v1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    check-cast v4, [I

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-virtual {p0, v4, v3}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getContentSpec(ILmf/org/apache/xerces/impl/dtd/XMLContentSpec;)Z

    iget-short v4, v2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    if-nez v4, :cond_6

    iget-short v4, v3, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    if-nez v4, :cond_6

    iget-object v7, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fQName:Lmf/org/apache/xerces/xni/QName;

    const/4 v8, 0x0

    iget-object v4, v2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, v2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v8, v4, v5, v6}, Lmf/org/apache/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fQName2:Lmf/org/apache/xerces/xni/QName;

    const/4 v8, 0x0

    iget-object v4, v3, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, v3, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v3, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v8, v4, v5, v6}, Lmf/org/apache/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lmf/org/apache/xerces/impl/dtd/models/SimpleContentModel;

    iget-short v5, v1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    iget-object v6, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v7, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fQName2:Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v4, v5, v6, v7}, Lmf/org/apache/xerces/impl/dtd/models/SimpleContentModel;-><init>(SLmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/QName;)V

    goto :goto_0

    .end local v2    # "contentSpecLeft":Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;
    .end local v3    # "contentSpecRight":Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;
    :cond_3
    iget-short v4, v1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    const/4 v5, 0x1

    if-eq v4, v5, :cond_4

    iget-short v4, v1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    const/4 v5, 0x2

    if-eq v4, v5, :cond_4

    iget-short v4, v1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    const/4 v5, 0x3

    if-ne v4, v5, :cond_5

    :cond_4
    new-instance v2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;-><init>()V

    .restart local v2    # "contentSpecLeft":Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;
    iget-object v4, v1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    check-cast v4, [I

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-virtual {p0, v4, v2}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getContentSpec(ILmf/org/apache/xerces/impl/dtd/XMLContentSpec;)Z

    iget-short v4, v2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    if-nez v4, :cond_6

    iget-object v7, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fQName:Lmf/org/apache/xerces/xni/QName;

    const/4 v8, 0x0

    iget-object v4, v2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, v2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v8, v4, v5, v6}, Lmf/org/apache/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lmf/org/apache/xerces/impl/dtd/models/SimpleContentModel;

    iget-short v5, v1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    iget-object v6, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fQName:Lmf/org/apache/xerces/xni/QName;

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lmf/org/apache/xerces/impl/dtd/models/SimpleContentModel;-><init>(SLmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/QName;)V

    goto/16 :goto_0

    .end local v2    # "contentSpecLeft":Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;
    :cond_5
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "ImplementationMessages.VAL_CST"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_6
    const/4 v4, 0x0

    iput v4, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fLeafCount:I

    const/4 v4, 0x0

    iput v4, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fLeafCount:I

    invoke-direct {p0, p1, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->buildSyntaxTree(ILmf/org/apache/xerces/impl/dtd/XMLContentSpec;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v0

    .local v0, "cmn":Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    new-instance v4, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;

    iget v5, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fLeafCount:I

    const/4 v6, 0x0

    invoke-direct {v4, v0, v5, v6}, Lmf/org/apache/xerces/impl/dtd/models/DFAContentModel;-><init>(Lmf/org/apache/xerces/impl/dtd/models/CMNode;IZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private ensureAttributeDeclCapacity(I)V
    .locals 3
    .param p1, "chunk"    # I

    .prologue
    const/16 v2, 0x100

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclName:[[Lmf/org/apache/xerces/xni/QName;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclIsExternal:[[I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclIsExternal:[[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->resize([[II)[[I

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclIsExternal:[[I

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclName:[[Lmf/org/apache/xerces/xni/QName;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclName:[[Lmf/org/apache/xerces/xni/QName;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->resize([[Lmf/org/apache/xerces/xni/QName;I)[[Lmf/org/apache/xerces/xni/QName;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclName:[[Lmf/org/apache/xerces/xni/QName;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclType:[[S

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclType:[[S

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->resize([[SI)[[S

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclType:[[S

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclEnumeration:[[[Ljava/lang/String;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclEnumeration:[[[Ljava/lang/String;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->resize([[[Ljava/lang/String;I)[[[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclEnumeration:[[[Ljava/lang/String;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclDefaultType:[[S

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclDefaultType:[[S

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->resize([[SI)[[S

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclDefaultType:[[S

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclDatatypeValidator:[[Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclDatatypeValidator:[[Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->resize([[Lmf/org/apache/xerces/impl/dv/DatatypeValidator;I)[[Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclDatatypeValidator:[[Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclDefaultValue:[[Ljava/lang/String;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclDefaultValue:[[Ljava/lang/String;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->resize([[Ljava/lang/String;I)[[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclDefaultValue:[[Ljava/lang/String;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclNonNormalizedDefaultValue:[[Ljava/lang/String;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclNonNormalizedDefaultValue:[[Ljava/lang/String;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->resize([[Ljava/lang/String;I)[[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclNonNormalizedDefaultValue:[[Ljava/lang/String;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclNextAttributeDeclIndex:[[I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclNextAttributeDeclIndex:[[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->resize([[II)[[I

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclNextAttributeDeclIndex:[[I

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclIsExternal:[[I

    new-array v1, v2, [I

    aput-object v1, v0, p1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclName:[[Lmf/org/apache/xerces/xni/QName;

    new-array v1, v2, [Lmf/org/apache/xerces/xni/QName;

    aput-object v1, v0, p1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclType:[[S

    new-array v1, v2, [S

    aput-object v1, v0, p1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclEnumeration:[[[Ljava/lang/String;

    new-array v1, v2, [[Ljava/lang/String;

    aput-object v1, v0, p1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclDefaultType:[[S

    new-array v1, v2, [S

    aput-object v1, v0, p1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclDatatypeValidator:[[Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    new-array v1, v2, [Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    aput-object v1, v0, p1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclDefaultValue:[[Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/String;

    aput-object v1, v0, p1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclNonNormalizedDefaultValue:[[Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/String;

    aput-object v1, v0, p1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclNextAttributeDeclIndex:[[I

    new-array v1, v2, [I

    aput-object v1, v0, p1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclName:[[Lmf/org/apache/xerces/xni/QName;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method private ensureContentSpecCapacity(I)V
    .locals 3
    .param p1, "chunk"    # I

    .prologue
    const/16 v2, 0x100

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fContentSpecType:[[S

    array-length v0, v0

    if-lt p1, v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fContentSpecType:[[S

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fContentSpecType:[[S

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->resize([[SI)[[S

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fContentSpecType:[[S

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fContentSpecValue:[[Ljava/lang/Object;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fContentSpecValue:[[Ljava/lang/Object;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->resize([[Ljava/lang/Object;I)[[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fContentSpecValue:[[Ljava/lang/Object;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fContentSpecOtherValue:[[Ljava/lang/Object;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fContentSpecOtherValue:[[Ljava/lang/Object;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->resize([[Ljava/lang/Object;I)[[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fContentSpecOtherValue:[[Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fContentSpecType:[[S

    new-array v1, v2, [S

    aput-object v1, v0, p1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fContentSpecValue:[[Ljava/lang/Object;

    new-array v1, v2, [Ljava/lang/Object;

    aput-object v1, v0, p1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fContentSpecOtherValue:[[Ljava/lang/Object;

    new-array v1, v2, [Ljava/lang/Object;

    aput-object v1, v0, p1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fContentSpecType:[[S

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method private ensureElementDeclCapacity(I)V
    .locals 3
    .param p1, "chunk"    # I

    .prologue
    const/16 v2, 0x100

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclName:[[Lmf/org/apache/xerces/xni/QName;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclIsExternal:[[I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclIsExternal:[[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->resize([[II)[[I

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclIsExternal:[[I

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclName:[[Lmf/org/apache/xerces/xni/QName;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclName:[[Lmf/org/apache/xerces/xni/QName;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->resize([[Lmf/org/apache/xerces/xni/QName;I)[[Lmf/org/apache/xerces/xni/QName;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclName:[[Lmf/org/apache/xerces/xni/QName;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclType:[[S

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclType:[[S

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->resize([[SI)[[S

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclType:[[S

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclContentModelValidator:[[Lmf/org/apache/xerces/impl/dtd/models/ContentModelValidator;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclContentModelValidator:[[Lmf/org/apache/xerces/impl/dtd/models/ContentModelValidator;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->resize([[Lmf/org/apache/xerces/impl/dtd/models/ContentModelValidator;I)[[Lmf/org/apache/xerces/impl/dtd/models/ContentModelValidator;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclContentModelValidator:[[Lmf/org/apache/xerces/impl/dtd/models/ContentModelValidator;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclContentSpecIndex:[[I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclContentSpecIndex:[[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->resize([[II)[[I

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclContentSpecIndex:[[I

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclFirstAttributeDeclIndex:[[I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclFirstAttributeDeclIndex:[[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->resize([[II)[[I

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclFirstAttributeDeclIndex:[[I

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclLastAttributeDeclIndex:[[I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclLastAttributeDeclIndex:[[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->resize([[II)[[I

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclLastAttributeDeclIndex:[[I

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclIsExternal:[[I

    new-array v1, v2, [I

    aput-object v1, v0, p1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclName:[[Lmf/org/apache/xerces/xni/QName;

    new-array v1, v2, [Lmf/org/apache/xerces/xni/QName;

    aput-object v1, v0, p1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclType:[[S

    new-array v1, v2, [S

    aput-object v1, v0, p1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclContentModelValidator:[[Lmf/org/apache/xerces/impl/dtd/models/ContentModelValidator;

    new-array v1, v2, [Lmf/org/apache/xerces/impl/dtd/models/ContentModelValidator;

    aput-object v1, v0, p1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclContentSpecIndex:[[I

    new-array v1, v2, [I

    aput-object v1, v0, p1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclFirstAttributeDeclIndex:[[I

    new-array v1, v2, [I

    aput-object v1, v0, p1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclLastAttributeDeclIndex:[[I

    new-array v1, v2, [I

    aput-object v1, v0, p1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclName:[[Lmf/org/apache/xerces/xni/QName;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method private ensureEntityDeclCapacity(I)V
    .locals 3
    .param p1, "chunk"    # I

    .prologue
    const/16 v2, 0x100

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityName:[[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityName:[[Ljava/lang/String;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityName:[[Ljava/lang/String;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->resize([[Ljava/lang/String;I)[[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityName:[[Ljava/lang/String;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityValue:[[Ljava/lang/String;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityValue:[[Ljava/lang/String;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->resize([[Ljava/lang/String;I)[[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityValue:[[Ljava/lang/String;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityPublicId:[[Ljava/lang/String;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityPublicId:[[Ljava/lang/String;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->resize([[Ljava/lang/String;I)[[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityPublicId:[[Ljava/lang/String;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntitySystemId:[[Ljava/lang/String;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntitySystemId:[[Ljava/lang/String;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->resize([[Ljava/lang/String;I)[[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntitySystemId:[[Ljava/lang/String;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityBaseSystemId:[[Ljava/lang/String;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityBaseSystemId:[[Ljava/lang/String;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->resize([[Ljava/lang/String;I)[[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityBaseSystemId:[[Ljava/lang/String;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityNotation:[[Ljava/lang/String;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityNotation:[[Ljava/lang/String;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->resize([[Ljava/lang/String;I)[[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityNotation:[[Ljava/lang/String;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityIsPE:[[B

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityIsPE:[[B

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->resize([[BI)[[B

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityIsPE:[[B

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityInExternal:[[B

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityInExternal:[[B

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->resize([[BI)[[B

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityInExternal:[[B

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityName:[[Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/String;

    aput-object v1, v0, p1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityValue:[[Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/String;

    aput-object v1, v0, p1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityPublicId:[[Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/String;

    aput-object v1, v0, p1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntitySystemId:[[Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/String;

    aput-object v1, v0, p1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityBaseSystemId:[[Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/String;

    aput-object v1, v0, p1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityNotation:[[Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/String;

    aput-object v1, v0, p1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityIsPE:[[B

    new-array v1, v2, [B

    aput-object v1, v0, p1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityInExternal:[[B

    new-array v1, v2, [B

    aput-object v1, v0, p1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityName:[[Ljava/lang/String;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method private ensureNotationDeclCapacity(I)V
    .locals 3
    .param p1, "chunk"    # I

    .prologue
    const/16 v2, 0x100

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNotationName:[[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNotationName:[[Ljava/lang/String;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNotationName:[[Ljava/lang/String;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->resize([[Ljava/lang/String;I)[[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNotationName:[[Ljava/lang/String;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNotationPublicId:[[Ljava/lang/String;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNotationPublicId:[[Ljava/lang/String;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->resize([[Ljava/lang/String;I)[[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNotationPublicId:[[Ljava/lang/String;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNotationSystemId:[[Ljava/lang/String;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNotationSystemId:[[Ljava/lang/String;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->resize([[Ljava/lang/String;I)[[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNotationSystemId:[[Ljava/lang/String;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNotationBaseSystemId:[[Ljava/lang/String;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNotationBaseSystemId:[[Ljava/lang/String;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->resize([[Ljava/lang/String;I)[[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNotationBaseSystemId:[[Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNotationName:[[Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/String;

    aput-object v1, v0, p1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNotationPublicId:[[Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/String;

    aput-object v1, v0, p1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNotationSystemId:[[Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/String;

    aput-object v1, v0, p1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNotationBaseSystemId:[[Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/String;

    aput-object v1, v0, p1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNotationName:[[Ljava/lang/String;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method private printAttribute(I)V
    .locals 3
    .param p1, "attributeDeclIndex"    # I

    .prologue
    new-instance v0, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;-><init>()V

    .local v0, "attributeDecl":Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;
    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getAttributeDecl(ILmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, " { "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v2, v0, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static resize([[BI)[[B
    .locals 3
    .param p0, "array"    # [[B
    .param p1, "newsize"    # I

    .prologue
    const/4 v2, 0x0

    new-array v0, p1, [[B

    .local v0, "newarray":[[B
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private static resize([[II)[[I
    .locals 3
    .param p0, "array"    # [[I
    .param p1, "newsize"    # I

    .prologue
    const/4 v2, 0x0

    new-array v0, p1, [[I

    .local v0, "newarray":[[I
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private static resize([[Ljava/lang/Object;I)[[Ljava/lang/Object;
    .locals 3
    .param p0, "array"    # [[Ljava/lang/Object;
    .param p1, "newsize"    # I

    .prologue
    const/4 v2, 0x0

    new-array v0, p1, [[Ljava/lang/Object;

    .local v0, "newarray":[[Ljava/lang/Object;
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private static resize([[Ljava/lang/String;I)[[Ljava/lang/String;
    .locals 3
    .param p0, "array"    # [[Ljava/lang/String;
    .param p1, "newsize"    # I

    .prologue
    const/4 v2, 0x0

    new-array v0, p1, [[Ljava/lang/String;

    .local v0, "newarray":[[Ljava/lang/String;
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private static resize([[Lmf/org/apache/xerces/impl/dtd/models/ContentModelValidator;I)[[Lmf/org/apache/xerces/impl/dtd/models/ContentModelValidator;
    .locals 3
    .param p0, "array"    # [[Lmf/org/apache/xerces/impl/dtd/models/ContentModelValidator;
    .param p1, "newsize"    # I

    .prologue
    const/4 v2, 0x0

    new-array v0, p1, [[Lmf/org/apache/xerces/impl/dtd/models/ContentModelValidator;

    .local v0, "newarray":[[Lmf/org/apache/xerces/impl/dtd/models/ContentModelValidator;
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private static resize([[Lmf/org/apache/xerces/impl/dv/DatatypeValidator;I)[[Lmf/org/apache/xerces/impl/dv/DatatypeValidator;
    .locals 3
    .param p0, "array"    # [[Lmf/org/apache/xerces/impl/dv/DatatypeValidator;
    .param p1, "newsize"    # I

    .prologue
    const/4 v2, 0x0

    new-array v0, p1, [[Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    .local v0, "newarray":[[Lmf/org/apache/xerces/impl/dv/DatatypeValidator;
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private static resize([[Lmf/org/apache/xerces/xni/QName;I)[[Lmf/org/apache/xerces/xni/QName;
    .locals 3
    .param p0, "array"    # [[Lmf/org/apache/xerces/xni/QName;
    .param p1, "newsize"    # I

    .prologue
    const/4 v2, 0x0

    new-array v0, p1, [[Lmf/org/apache/xerces/xni/QName;

    .local v0, "newarray":[[Lmf/org/apache/xerces/xni/QName;
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private static resize([[SI)[[S
    .locals 3
    .param p0, "array"    # [[S
    .param p1, "newsize"    # I

    .prologue
    const/4 v2, 0x0

    new-array v0, p1, [[S

    .local v0, "newarray":[[S
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private static resize([[[Ljava/lang/String;I)[[[Ljava/lang/String;
    .locals 3
    .param p0, "array"    # [[[Ljava/lang/String;
    .param p1, "newsize"    # I

    .prologue
    const/4 v2, 0x0

    new-array v0, p1, [[[Ljava/lang/String;

    .local v0, "newarray":[[[Ljava/lang/String;
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method


# virtual methods
.method protected addContentSpecNode(SII)I
    .locals 5
    .param p1, "nodeType"    # S
    .param p2, "leftNodeIndex"    # I
    .param p3, "rightNodeIndex"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->createContentSpec()I

    move-result v0

    .local v0, "contentSpecIndex":I
    new-array v1, v4, [I

    .local v1, "leftIntArray":[I
    new-array v2, v4, [I

    .local v2, "rightIntArray":[I
    aput p2, v1, v3

    aput p3, v2, v3

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fContentSpec:Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;

    invoke-virtual {v3, p1, v1, v2}, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->setValues(SLjava/lang/Object;Ljava/lang/Object;)V

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fContentSpec:Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;

    invoke-virtual {p0, v0, v3}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->setContentSpec(ILmf/org/apache/xerces/impl/dtd/XMLContentSpec;)V

    return v0
.end method

.method protected addContentSpecNode(SLjava/lang/String;)I
    .locals 3
    .param p1, "nodeType"    # S
    .param p2, "nodeValue"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->createContentSpec()I

    move-result v0

    .local v0, "contentSpecIndex":I
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fContentSpec:Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2}, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->setValues(SLjava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fContentSpec:Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->setContentSpec(ILmf/org/apache/xerces/impl/dtd/XMLContentSpec;)V

    return v0
.end method

.method protected addContentSpecToElement(Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;)V
    .locals 5
    .param p1, "elementDecl"    # Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;

    .prologue
    const/4 v3, 0x2

    const/4 v4, 0x0

    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    if-eqz v1, :cond_0

    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget-short v1, p1, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;->type:S

    if-ne v1, v3, :cond_2

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNodeIndexStack:[I

    if-eqz v1, :cond_2

    iget-short v1, p1, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;->type:S

    if-ne v1, v3, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->addUniqueLeafNode(Ljava/lang/String;)I

    move-result v0

    .local v0, "pcdata":I
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNodeIndexStack:[I

    aget v1, v1, v4

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNodeIndexStack:[I

    aput v0, v1, v4

    .end local v0    # "pcdata":I
    :cond_1
    :goto_0
    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fCurrentElementIndex:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNodeIndexStack:[I

    iget v3, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    aget v2, v2, v3

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->setContentSpecIndex(II)V

    :cond_2
    return-void

    .restart local v0    # "pcdata":I
    :cond_3
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNodeIndexStack:[I

    const/4 v2, 0x4

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNodeIndexStack:[I

    aget v3, v3, v4

    invoke-virtual {p0, v2, v0, v3}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->addContentSpecNode(SII)I

    move-result v2

    aput v2, v1, v4

    goto :goto_0
.end method

.method protected addUniqueLeafNode(Ljava/lang/String;)I
    .locals 4
    .param p1, "elementName"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->createContentSpec()I

    move-result v0

    .local v0, "contentSpecIndex":I
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fContentSpec:Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->setValues(SLjava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fContentSpec:Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->setContentSpec(ILmf/org/apache/xerces/impl/dtd/XMLContentSpec;)V

    return v0
.end method

.method public any(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .param p1, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    return-void
.end method

.method public attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 8
    .param p1, "elementName"    # Ljava/lang/String;
    .param p2, "attributeName"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "enumeration"    # [Ljava/lang/String;
    .param p5, "defaultType"    # Ljava/lang/String;
    .param p6, "defaultValue"    # Lmf/org/apache/xerces/xni/XMLString;
    .param p7, "nonNormalizedDefaultValue"    # Lmf/org/apache/xerces/xni/XMLString;
    .param p8, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    iget-object v4, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclTab:Ljava/util/Hashtable;

    invoke-virtual {v4, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->createElementDecl()I

    move-result v4

    iput v4, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fCurrentElementIndex:I

    new-instance v1, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;-><init>()V

    .local v1, "elementDecl":Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;
    iget-object v4, v1, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;->name:Lmf/org/apache/xerces/xni/QName;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p1, p1, v6}, Lmf/org/apache/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, -0x1

    iput v4, v1, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;->scope:I

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclTab:Ljava/util/Hashtable;

    invoke-virtual {v4, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v4, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fCurrentElementIndex:I

    invoke-virtual {p0, v4, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->setElementDecl(ILmf/org/apache/xerces/impl/dtd/XMLElementDecl;)V

    .end local v1    # "elementDecl":Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;
    :cond_0
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getElementDeclIndex(Ljava/lang/String;)I

    move-result v2

    .local v2, "elementIndex":I
    invoke-virtual {p0, v2, p2}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getAttributeDeclIndex(ILjava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->createAttributeDecl()I

    move-result v4

    iput v4, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fCurrentAttributeIndex:I

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fSimpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->clear()V

    if-eqz p5, :cond_2

    const-string v4, "#FIXED"

    invoke-virtual {p5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fSimpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    const/4 v5, 0x1

    iput-short v5, v4, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->defaultType:S

    :cond_2
    :goto_1
    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fSimpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    if-eqz p6, :cond_7

    invoke-virtual {p6}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_2
    iput-object v4, v5, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->defaultValue:Ljava/lang/String;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fSimpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    if-eqz p7, :cond_8

    invoke-virtual {p7}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_3
    iput-object v4, v5, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->nonNormalizedDefaultValue:Ljava/lang/String;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fSimpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iput-object p4, v4, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->enumeration:[Ljava/lang/String;

    const-string v4, "CDATA"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fSimpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    const/4 v5, 0x0

    iput-short v5, v4, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->type:S

    :cond_3
    :goto_4
    iget-object v4, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fQName:Lmf/org/apache/xerces/xni/QName;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p2, p2, v6}, Lmf/org/apache/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v6, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fSimpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->setValues(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;Z)V

    iget v4, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fCurrentAttributeIndex:I

    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    invoke-virtual {p0, v2, v4, v5}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->setAttributeDecl(IILmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;)V

    iget v4, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fCurrentAttributeIndex:I

    shr-int/lit8 v0, v4, 0x8

    .local v0, "chunk":I
    iget v4, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fCurrentAttributeIndex:I

    and-int/lit16 v3, v4, 0xff

    .local v3, "index":I
    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->ensureAttributeDeclCapacity(I)V

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclIsExternal:[[I

    aget-object v5, v4, v0

    iget-boolean v4, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fReadingExternalDTD:Z

    if-nez v4, :cond_4

    iget v4, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fPEDepth:I

    if-lez v4, :cond_12

    :cond_4
    const/4 v4, 0x1

    :goto_5
    aput v4, v5, v3

    goto :goto_0

    .end local v0    # "chunk":I
    .end local v3    # "index":I
    :cond_5
    const-string v4, "#IMPLIED"

    invoke-virtual {p5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fSimpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    const/4 v5, 0x0

    iput-short v5, v4, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->defaultType:S

    goto :goto_1

    :cond_6
    const-string v4, "#REQUIRED"

    invoke-virtual {p5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fSimpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    const/4 v5, 0x2

    iput-short v5, v4, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->defaultType:S

    goto :goto_1

    :cond_7
    const/4 v4, 0x0

    goto :goto_2

    :cond_8
    const/4 v4, 0x0

    goto :goto_3

    :cond_9
    const-string v4, "ID"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fSimpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    const/4 v5, 0x3

    iput-short v5, v4, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->type:S

    goto :goto_4

    :cond_a
    const-string v4, "IDREF"

    invoke-virtual {p3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fSimpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    const/4 v5, 0x4

    iput-short v5, v4, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->type:S

    const-string v4, "S"

    invoke-virtual {p3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_3

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fSimpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->list:Z

    goto :goto_4

    :cond_b
    const-string v4, "ENTITIES"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fSimpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    const/4 v5, 0x1

    iput-short v5, v4, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->type:S

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fSimpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->list:Z

    goto/16 :goto_4

    :cond_c
    const-string v4, "ENTITY"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fSimpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    const/4 v5, 0x1

    iput-short v5, v4, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->type:S

    goto/16 :goto_4

    :cond_d
    const-string v4, "NMTOKENS"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fSimpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    const/4 v5, 0x5

    iput-short v5, v4, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->type:S

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fSimpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->list:Z

    goto/16 :goto_4

    :cond_e
    const-string v4, "NMTOKEN"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fSimpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    const/4 v5, 0x5

    iput-short v5, v4, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->type:S

    goto/16 :goto_4

    :cond_f
    const-string v4, "NOTATION"

    invoke-virtual {p3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fSimpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    const/4 v5, 0x6

    iput-short v5, v4, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->type:S

    goto/16 :goto_4

    :cond_10
    const-string v4, "ENUMERATION"

    invoke-virtual {p3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fSimpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    const/4 v5, 0x2

    iput-short v5, v4, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->type:S

    goto/16 :goto_4

    :cond_11
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "!!! unknown attribute type "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_4

    .restart local v0    # "chunk":I
    .restart local v3    # "index":I
    :cond_12
    const/4 v4, 0x0

    goto/16 :goto_5
.end method

.method public comment(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .param p1, "text"    # Lmf/org/apache/xerces/xni/XMLString;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    return-void
.end method

.method protected createAttributeDecl()I
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclCount:I

    shr-int/lit8 v0, v2, 0x8

    .local v0, "chunk":I
    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclCount:I

    and-int/lit16 v1, v2, 0xff

    .local v1, "index":I
    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->ensureAttributeDeclCapacity(I)V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclName:[[Lmf/org/apache/xerces/xni/QName;

    aget-object v2, v2, v0

    new-instance v3, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v3}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    aput-object v3, v2, v1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclType:[[S

    aget-object v2, v2, v0

    aput-short v5, v2, v1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclDatatypeValidator:[[Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    aget-object v2, v2, v0

    aput-object v4, v2, v1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclEnumeration:[[[Ljava/lang/String;

    aget-object v2, v2, v0

    aput-object v4, v2, v1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclDefaultType:[[S

    aget-object v2, v2, v0

    const/4 v3, 0x0

    aput-short v3, v2, v1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclDefaultValue:[[Ljava/lang/String;

    aget-object v2, v2, v0

    aput-object v4, v2, v1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclNonNormalizedDefaultValue:[[Ljava/lang/String;

    aget-object v2, v2, v0

    aput-object v4, v2, v1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclNextAttributeDeclIndex:[[I

    aget-object v2, v2, v0

    aput v5, v2, v1

    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclCount:I

    return v2
.end method

.method protected createContentSpec()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fContentSpecCount:I

    shr-int/lit8 v0, v2, 0x8

    .local v0, "chunk":I
    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fContentSpecCount:I

    and-int/lit16 v1, v2, 0xff

    .local v1, "index":I
    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->ensureContentSpecCapacity(I)V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fContentSpecType:[[S

    aget-object v2, v2, v0

    const/4 v3, -0x1

    aput-short v3, v2, v1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fContentSpecValue:[[Ljava/lang/Object;

    aget-object v2, v2, v0

    aput-object v4, v2, v1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fContentSpecOtherValue:[[Ljava/lang/Object;

    aget-object v2, v2, v0

    aput-object v4, v2, v1

    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fContentSpecCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fContentSpecCount:I

    return v2
.end method

.method protected createElementDecl()I
    .locals 5

    .prologue
    const/4 v4, -0x1

    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclCount:I

    shr-int/lit8 v0, v2, 0x8

    .local v0, "chunk":I
    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclCount:I

    and-int/lit16 v1, v2, 0xff

    .local v1, "index":I
    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->ensureElementDeclCapacity(I)V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclName:[[Lmf/org/apache/xerces/xni/QName;

    aget-object v2, v2, v0

    new-instance v3, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v3}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    aput-object v3, v2, v1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclType:[[S

    aget-object v2, v2, v0

    aput-short v4, v2, v1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclContentModelValidator:[[Lmf/org/apache/xerces/impl/dtd/models/ContentModelValidator;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    aput-object v3, v2, v1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclFirstAttributeDeclIndex:[[I

    aget-object v2, v2, v0

    aput v4, v2, v1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclLastAttributeDeclIndex:[[I

    aget-object v2, v2, v0

    aput v4, v2, v1

    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclCount:I

    return v2
.end method

.method protected createEntityDecl()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityCount:I

    shr-int/lit8 v0, v2, 0x8

    .local v0, "chunk":I
    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityCount:I

    and-int/lit16 v1, v2, 0xff

    .local v1, "index":I
    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->ensureEntityDeclCapacity(I)V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityIsPE:[[B

    aget-object v2, v2, v0

    aput-byte v3, v2, v1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityInExternal:[[B

    aget-object v2, v2, v0

    aput-byte v3, v2, v1

    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityCount:I

    return v2
.end method

.method protected createNotationDecl()I
    .locals 3

    .prologue
    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNotationCount:I

    shr-int/lit8 v0, v1, 0x8

    .local v0, "chunk":I
    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->ensureNotationDeclCapacity(I)V

    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNotationCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNotationCount:I

    return v1
.end method

.method public element(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 5
    .param p1, "elementName"    # Ljava/lang/String;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fMixed:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNodeIndexStack:[I

    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    aget v0, v0, v1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNodeIndexStack:[I

    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->addUniqueLeafNode(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNodeIndexStack:[I

    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    const/4 v2, 0x4

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNodeIndexStack:[I

    iget v4, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    aget v3, v3, v4

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->addUniqueLeafNode(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v2, v3, v4}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->addContentSpecNode(SII)I

    move-result v2

    aput v2, v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNodeIndexStack:[I

    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->addContentSpecNode(SLjava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    goto :goto_0
.end method

.method public elementDecl(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "contentModel"    # Ljava/lang/String;
    .param p3, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v9, -0x1

    const/4 v8, 0x0

    iget-object v6, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclTab:Ljava/util/Hashtable;

    invoke-virtual {v6, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;

    .local v3, "tmpElementDecl":Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;
    if-eqz v3, :cond_4

    iget-short v6, v3, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;->type:S

    if-ne v6, v9, :cond_3

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getElementDeclIndex(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fCurrentElementIndex:I

    :goto_0
    new-instance v1, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;-><init>()V

    .local v1, "elementDecl":Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;
    iget-object v6, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v6, v8, p1, p1, v8}, Lmf/org/apache/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, v1, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v7, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v6, v7}, Lmf/org/apache/xerces/xni/QName;->setValues(Lmf/org/apache/xerces/xni/QName;)V

    iput-object v8, v1, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;->contentModelValidator:Lmf/org/apache/xerces/impl/dtd/models/ContentModelValidator;

    iput v9, v1, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;->scope:I

    const-string v6, "EMPTY"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    iput-short v5, v1, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;->type:S

    :cond_0
    :goto_1
    iget-object v6, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclTab:Ljava/util/Hashtable;

    invoke-virtual {v6, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDecl:Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->addContentSpecToElement(Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;)V

    iget v6, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fCurrentElementIndex:I

    iget-object v7, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDecl:Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;

    invoke-virtual {p0, v6, v7}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->setElementDecl(ILmf/org/apache/xerces/impl/dtd/XMLElementDecl;)V

    iget v6, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fCurrentElementIndex:I

    shr-int/lit8 v0, v6, 0x8

    .local v0, "chunk":I
    iget v6, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fCurrentElementIndex:I

    and-int/lit16 v2, v6, 0xff

    .local v2, "index":I
    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->ensureElementDeclCapacity(I)V

    iget-object v6, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclIsExternal:[[I

    aget-object v6, v6, v0

    iget-boolean v7, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fReadingExternalDTD:Z

    if-nez v7, :cond_1

    iget v7, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fPEDepth:I

    if-lez v7, :cond_2

    :cond_1
    move v4, v5

    :cond_2
    aput v4, v6, v2

    .end local v0    # "chunk":I
    .end local v1    # "elementDecl":Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;
    .end local v2    # "index":I
    :cond_3
    return-void

    :cond_4
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->createElementDecl()I

    move-result v6

    iput v6, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fCurrentElementIndex:I

    goto :goto_0

    .restart local v1    # "elementDecl":Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;
    :cond_5
    const-string v6, "ANY"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    iput-short v4, v1, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;->type:S

    goto :goto_1

    :cond_6
    const-string v6, "("

    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "#PCDATA"

    invoke-virtual {p2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_7

    const/4 v6, 0x2

    iput-short v6, v1, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;->type:S

    goto :goto_1

    :cond_7
    const/4 v6, 0x3

    iput-short v6, v1, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;->type:S

    goto :goto_1
.end method

.method public empty(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .param p1, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    return-void
.end method

.method public endAttlist(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .param p1, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    return-void
.end method

.method public endConditional(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .param p1, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    return-void
.end method

.method public endContentModel(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .param p1, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    return-void
.end method

.method public endDTD(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 7
    .param p1, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    iput-boolean v6, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fIsImmutable:Z

    iget-object v6, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fGrammarDescription:Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;

    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->getRootName()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    const/4 v4, 0x0

    .local v4, "index":I
    const/4 v1, 0x0

    .local v1, "currName":Ljava/lang/String;
    iget v5, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclCount:I

    .local v5, "size":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .local v2, "elements":Ljava/util/ArrayList;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v5, :cond_1

    iget-object v6, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fGrammarDescription:Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;

    invoke-virtual {v6, v2}, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->setPossibleRoots(Ljava/util/ArrayList;)V

    .end local v1    # "currName":Ljava/lang/String;
    .end local v2    # "elements":Ljava/util/ArrayList;
    .end local v3    # "i":I
    .end local v4    # "index":I
    .end local v5    # "size":I
    :cond_0
    return-void

    .restart local v1    # "currName":Ljava/lang/String;
    .restart local v2    # "elements":Ljava/util/ArrayList;
    .restart local v3    # "i":I
    .restart local v4    # "index":I
    .restart local v5    # "size":I
    :cond_1
    shr-int/lit8 v0, v3, 0x8

    .local v0, "chunk":I
    and-int/lit16 v4, v3, 0xff

    iget-object v6, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclName:[[Lmf/org/apache/xerces/xni/QName;

    aget-object v6, v6, v0

    aget-object v6, v6, v4

    iget-object v1, v6, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public endExternalSubset(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fReadingExternalDTD:Z

    return-void
.end method

.method public endGroup(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 7
    .param p1, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fMixed:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fPrevNodeIndexStack:[I

    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    aget v1, v1, v2

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNodeIndexStack:[I

    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fOpStack:[S

    iget v4, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    aget-short v3, v3, v4

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fPrevNodeIndexStack:[I

    iget v5, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    aget v4, v4, v5

    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNodeIndexStack:[I

    iget v6, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    aget v5, v5, v6

    invoke-virtual {p0, v3, v4, v5}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->addContentSpecNode(SII)I

    move-result v3

    aput v3, v1, v2

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNodeIndexStack:[I

    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    aget v0, v1, v2

    .local v0, "nodeIndex":I
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNodeIndexStack:[I

    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    aput v0, v1, v2

    .end local v0    # "nodeIndex":I
    :cond_1
    return-void
.end method

.method public endParameterEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fPEDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fPEDepth:I

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fPEntityStack:[Z

    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fPEDepth:I

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fReadingExternalDTD:Z

    return-void
.end method

.method public externalEntityDecl(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "identifier"    # Lmf/org/apache/xerces/xni/XMLResourceIdentifier;
    .param p3, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getEntityDeclIndex(Ljava/lang/String;)I

    move-result v9

    .local v9, "entityIndex":I
    const/4 v1, -0x1

    if-ne v9, v1, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->createEntityDecl()I

    move-result v9

    const-string v1, "%"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    .local v7, "isPE":Z
    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fReadingExternalDTD:Z

    if-nez v1, :cond_1

    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fPEDepth:I

    if-gtz v1, :cond_1

    const/4 v8, 0x0

    .local v8, "inExternal":Z
    :goto_0
    new-instance v0, Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;-><init>()V

    .local v0, "entityDecl":Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;
    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v4

    move-object v1, p1

    move-object v6, v5

    invoke-virtual/range {v0 .. v8}, Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-virtual {p0, v9, v0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->setEntityDecl(ILmf/org/apache/xerces/impl/dtd/XMLEntityDecl;)V

    .end local v0    # "entityDecl":Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;
    .end local v7    # "isPE":Z
    .end local v8    # "inExternal":Z
    :cond_0
    return-void

    .restart local v7    # "isPE":Z
    :cond_1
    const/4 v8, 0x1

    goto :goto_0
.end method

.method public getAttributeDecl(ILmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;)Z
    .locals 12
    .param p1, "attributeDeclIndex"    # I
    .param p2, "attributeDecl"    # Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    .prologue
    const/4 v11, 0x1

    const/4 v4, 0x0

    if-ltz p1, :cond_0

    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclCount:I

    if-lt p1, v0, :cond_1

    :cond_0
    move v11, v4

    :goto_0
    return v11

    :cond_1
    shr-int/lit8 v9, p1, 0x8

    .local v9, "chunk":I
    and-int/lit16 v10, p1, 0xff

    .local v10, "index":I
    iget-object v0, p2, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclName:[[Lmf/org/apache/xerces/xni/QName;

    aget-object v2, v2, v9

    aget-object v2, v2, v10

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/xni/QName;->setValues(Lmf/org/apache/xerces/xni/QName;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclType:[[S

    aget-object v0, v0, v9

    aget-short v0, v0, v10

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    const/4 v1, -0x1

    .local v1, "attributeType":S
    const/4 v4, 0x0

    .local v4, "isList":Z
    :goto_1
    iget-object v0, p2, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclName:[[Lmf/org/apache/xerces/xni/QName;

    aget-object v2, v2, v9

    aget-object v2, v2, v10

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclEnumeration:[[[Ljava/lang/String;

    aget-object v3, v3, v9

    aget-object v3, v3, v10

    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclDefaultType:[[S

    aget-object v5, v5, v9

    aget-short v5, v5, v10

    iget-object v6, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclDefaultValue:[[Ljava/lang/String;

    aget-object v6, v6, v9

    aget-object v6, v6, v10

    iget-object v7, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclNonNormalizedDefaultValue:[[Ljava/lang/String;

    aget-object v7, v7, v9

    aget-object v7, v7, v10

    iget-object v8, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclDatatypeValidator:[[Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    aget-object v8, v8, v9

    aget-object v8, v8, v10

    invoke-virtual/range {v0 .. v8}, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->setValues(SLjava/lang/String;[Ljava/lang/String;ZSLjava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/DatatypeValidator;)V

    goto :goto_0

    .end local v1    # "attributeType":S
    .end local v4    # "isList":Z
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclType:[[S

    aget-object v0, v0, v9

    aget-short v0, v0, v10

    and-int/lit16 v0, v0, -0x81

    int-to-short v1, v0

    .restart local v1    # "attributeType":S
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclType:[[S

    aget-object v0, v0, v9

    aget-short v0, v0, v10

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_3

    move v4, v11

    .restart local v4    # "isList":Z
    :cond_3
    goto :goto_1
.end method

.method public getAttributeDeclIndex(ILjava/lang/String;)I
    .locals 3
    .param p1, "elementDeclIndex"    # I
    .param p2, "attributeDeclName"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getFirstAttributeDeclIndex(I)I

    move-result v0

    .local v0, "attDefIndex":I
    :goto_1
    if-ne v0, v1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    invoke-virtual {p0, v0, v2}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getAttributeDecl(ILmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;)Z

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-eq v2, p2, :cond_0

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getNextAttributeDeclIndex(I)I

    move-result v0

    goto :goto_1
.end method

.method public getAttributeDeclIsExternal(I)Z
    .locals 4
    .param p1, "attributeDeclIndex"    # I

    .prologue
    const/4 v2, 0x0

    if-gez p1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    shr-int/lit8 v0, p1, 0x8

    .local v0, "chunk":I
    and-int/lit16 v1, p1, 0xff

    .local v1, "index":I
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclIsExternal:[[I

    aget-object v3, v3, v0

    aget v3, v3, v1

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public getContentSpec(ILmf/org/apache/xerces/impl/dtd/XMLContentSpec;)Z
    .locals 3
    .param p1, "contentSpecIndex"    # I
    .param p2, "contentSpec"    # Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;

    .prologue
    if-ltz p1, :cond_0

    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fContentSpecCount:I

    if-lt p1, v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    shr-int/lit8 v0, p1, 0x8

    .local v0, "chunk":I
    and-int/lit16 v1, p1, 0xff

    .local v1, "index":I
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fContentSpecType:[[S

    aget-object v2, v2, v0

    aget-short v2, v2, v1

    iput-short v2, p2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fContentSpecValue:[[Ljava/lang/Object;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    iput-object v2, p2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fContentSpecOtherValue:[[Ljava/lang/Object;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    iput-object v2, p2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public getContentSpecAsString(I)Ljava/lang/String;
    .locals 13
    .param p1, "elementDeclIndex"    # I

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x0

    const/16 v10, 0x29

    const/16 v9, 0x28

    const/4 v8, 0x1

    if-ltz p1, :cond_0

    iget v7, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclCount:I

    if-lt p1, v7, :cond_1

    :cond_0
    const/4 v7, 0x0

    :goto_0
    return-object v7

    :cond_1
    shr-int/lit8 v0, p1, 0x8

    .local v0, "chunk":I
    and-int/lit16 v3, p1, 0xff

    .local v3, "index":I
    iget-object v7, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclContentSpecIndex:[[I

    aget-object v7, v7, v0

    aget v2, v7, v3

    .local v2, "contentSpecIndex":I
    new-instance v1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;-><init>()V

    .local v1, "contentSpec":Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;
    invoke-virtual {p0, v2, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getContentSpec(ILmf/org/apache/xerces/impl/dtd/XMLContentSpec;)Z

    move-result v7

    if-eqz v7, :cond_13

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .local v6, "str":Ljava/lang/StringBuffer;
    iget-short v7, v1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    and-int/lit8 v5, v7, 0xf

    .local v5, "parentContentSpecType":I
    packed-switch v5, :pswitch_data_0

    const-string v7, "???"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    :goto_1
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :pswitch_0
    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v7, v1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    if-nez v7, :cond_3

    iget-object v7, v1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    if-nez v7, :cond_3

    const-string v7, "#PCDATA"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_3
    iget-object v7, v1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_2

    :pswitch_1
    iget-object v7, v1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    check-cast v7, [I

    aget v7, v7, v11

    invoke-virtual {p0, v7, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getContentSpec(ILmf/org/apache/xerces/impl/dtd/XMLContentSpec;)Z

    iget-short v4, v1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    .local v4, "nextContentSpec":I
    if-nez v4, :cond_4

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v7, v1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_3
    const/16 v7, 0x3f

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_4
    const/4 v7, 0x3

    if-eq v4, v7, :cond_5

    if-eq v4, v12, :cond_5

    if-ne v4, v8, :cond_6

    :cond_5
    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-direct {p0, v1, v6, v8, v5}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->appendContentSpec(Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;Ljava/lang/StringBuffer;ZI)V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_6
    invoke-direct {p0, v1, v6, v8, v5}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->appendContentSpec(Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;Ljava/lang/StringBuffer;ZI)V

    goto :goto_3

    .end local v4    # "nextContentSpec":I
    :pswitch_2
    iget-object v7, v1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    check-cast v7, [I

    aget v7, v7, v11

    invoke-virtual {p0, v7, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getContentSpec(ILmf/org/apache/xerces/impl/dtd/XMLContentSpec;)Z

    iget-short v4, v1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    .restart local v4    # "nextContentSpec":I
    if-nez v4, :cond_a

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v7, v1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    if-nez v7, :cond_7

    iget-object v7, v1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    if-nez v7, :cond_7

    const-string v7, "#PCDATA"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_4
    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_5
    const/16 v7, 0x2a

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_7
    iget-object v7, v1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    if-eqz v7, :cond_8

    const-string v7, "##any:uri="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget-object v8, v1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_8
    iget-object v7, v1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    if-nez v7, :cond_9

    const-string v7, "##any"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_9
    invoke-direct {p0, v1, v6, v8, v5}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->appendContentSpec(Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;Ljava/lang/StringBuffer;ZI)V

    goto :goto_4

    :cond_a
    const/4 v7, 0x3

    if-eq v4, v7, :cond_b

    if-eq v4, v12, :cond_b

    if-ne v4, v8, :cond_c

    :cond_b
    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-direct {p0, v1, v6, v8, v5}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->appendContentSpec(Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;Ljava/lang/StringBuffer;ZI)V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5

    :cond_c
    invoke-direct {p0, v1, v6, v8, v5}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->appendContentSpec(Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;Ljava/lang/StringBuffer;ZI)V

    goto :goto_5

    .end local v4    # "nextContentSpec":I
    :pswitch_3
    iget-object v7, v1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    check-cast v7, [I

    aget v7, v7, v11

    invoke-virtual {p0, v7, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getContentSpec(ILmf/org/apache/xerces/impl/dtd/XMLContentSpec;)Z

    iget-short v4, v1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    .restart local v4    # "nextContentSpec":I
    if-nez v4, :cond_10

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v7, v1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    if-nez v7, :cond_d

    iget-object v7, v1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    if-nez v7, :cond_d

    const-string v7, "#PCDATA"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_6
    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_7
    const/16 v7, 0x2b

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :cond_d
    iget-object v7, v1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    if-eqz v7, :cond_e

    const-string v7, "##any:uri="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget-object v8, v1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_6

    :cond_e
    iget-object v7, v1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    if-nez v7, :cond_f

    const-string v7, "##any"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    :cond_f
    iget-object v7, v1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_6

    :cond_10
    const/4 v7, 0x3

    if-eq v4, v7, :cond_11

    if-eq v4, v12, :cond_11

    if-ne v4, v8, :cond_12

    :cond_11
    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-direct {p0, v1, v6, v8, v5}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->appendContentSpec(Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;Ljava/lang/StringBuffer;ZI)V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_7

    :cond_12
    invoke-direct {p0, v1, v6, v8, v5}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->appendContentSpec(Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;Ljava/lang/StringBuffer;ZI)V

    goto :goto_7

    .end local v4    # "nextContentSpec":I
    :pswitch_4
    invoke-direct {p0, v1, v6, v8, v5}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->appendContentSpec(Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;Ljava/lang/StringBuffer;ZI)V

    goto/16 :goto_1

    :pswitch_5
    const-string v7, "##any"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v7, v1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    if-eqz v7, :cond_2

    const-string v7, ":uri="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v7, v1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :pswitch_6
    const-string v7, "##other:uri="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v7, v1, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :pswitch_7
    const-string v7, "##local"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .end local v5    # "parentContentSpecType":I
    .end local v6    # "str":Ljava/lang/StringBuffer;
    :cond_13
    const/4 v7, 0x0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public getContentSpecIndex(I)I
    .locals 3
    .param p1, "elementDeclIndex"    # I

    .prologue
    if-ltz p1, :cond_0

    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclCount:I

    if-lt p1, v2, :cond_1

    :cond_0
    const/4 v2, -0x1

    :goto_0
    return v2

    :cond_1
    shr-int/lit8 v0, p1, 0x8

    .local v0, "chunk":I
    and-int/lit16 v1, p1, 0xff

    .local v1, "index":I
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclContentSpecIndex:[[I

    aget-object v2, v2, v0

    aget v2, v2, v1

    goto :goto_0
.end method

.method public getContentSpecType(I)S
    .locals 4
    .param p1, "elementIndex"    # I

    .prologue
    const/4 v2, -0x1

    if-ltz p1, :cond_0

    iget v3, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclCount:I

    if-lt p1, v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    shr-int/lit8 v0, p1, 0x8

    .local v0, "chunk":I
    and-int/lit16 v1, p1, 0xff

    .local v1, "index":I
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclType:[[S

    aget-object v3, v3, v0

    aget-short v3, v3, v1

    if-eq v3, v2, :cond_0

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclType:[[S

    aget-object v2, v2, v0

    aget-short v2, v2, v1

    and-int/lit16 v2, v2, -0x81

    int-to-short v2, v2

    goto :goto_0
.end method

.method public getDTDContentModelSource()Lmf/org/apache/xerces/xni/parser/XMLDTDContentModelSource;
    .locals 1

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDTDContentModelSource:Lmf/org/apache/xerces/xni/parser/XMLDTDContentModelSource;

    return-object v0
.end method

.method public getDTDSource()Lmf/org/apache/xerces/xni/parser/XMLDTDSource;
    .locals 1

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDTDSource:Lmf/org/apache/xerces/xni/parser/XMLDTDSource;

    return-object v0
.end method

.method protected getElementContentModelValidator(I)Lmf/org/apache/xerces/impl/dtd/models/ContentModelValidator;
    .locals 12
    .param p1, "elementDeclIndex"    # I

    .prologue
    const/4 v3, 0x0

    shr-int/lit8 v7, p1, 0x8

    .local v7, "chunk":I
    and-int/lit16 v11, p1, 0xff

    .local v11, "index":I
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclContentModelValidator:[[Lmf/org/apache/xerces/impl/dtd/models/ContentModelValidator;

    aget-object v1, v1, v7

    aget-object v0, v1, v11

    .local v0, "contentModel":Lmf/org/apache/xerces/impl/dtd/models/ContentModelValidator;
    if-eqz v0, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclType:[[S

    aget-object v1, v1, v7

    aget-short v10, v1, v11

    .local v10, "contentType":I
    const/4 v1, 0x4

    if-ne v10, v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclContentSpecIndex:[[I

    aget-object v1, v1, v7

    aget v9, v1, v11

    .local v9, "contentSpecIndex":I
    new-instance v8, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;

    invoke-direct {v8}, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;-><init>()V

    .local v8, "contentSpec":Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;
    invoke-virtual {p0, v9, v8}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getContentSpec(ILmf/org/apache/xerces/impl/dtd/XMLContentSpec;)Z

    const/4 v1, 0x2

    if-ne v10, v1, :cond_2

    new-instance v6, Lmf/org/apache/xerces/impl/dtd/DTDGrammar$ChildrenList;

    invoke-direct {v6}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar$ChildrenList;-><init>()V

    .local v6, "children":Lmf/org/apache/xerces/impl/dtd/DTDGrammar$ChildrenList;
    invoke-direct {p0, v9, v8, v6}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->contentSpecTree(ILmf/org/apache/xerces/impl/dtd/XMLContentSpec;Lmf/org/apache/xerces/impl/dtd/DTDGrammar$ChildrenList;)V

    new-instance v0, Lmf/org/apache/xerces/impl/dtd/models/MixedContentModel;

    .end local v0    # "contentModel":Lmf/org/apache/xerces/impl/dtd/models/ContentModelValidator;
    iget-object v1, v6, Lmf/org/apache/xerces/impl/dtd/DTDGrammar$ChildrenList;->qname:[Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v6, Lmf/org/apache/xerces/impl/dtd/DTDGrammar$ChildrenList;->type:[I

    iget v4, v6, Lmf/org/apache/xerces/impl/dtd/DTDGrammar$ChildrenList;->length:I

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/dtd/models/MixedContentModel;-><init>([Lmf/org/apache/xerces/xni/QName;[IIIZ)V

    .end local v6    # "children":Lmf/org/apache/xerces/impl/dtd/DTDGrammar$ChildrenList;
    .restart local v0    # "contentModel":Lmf/org/apache/xerces/impl/dtd/models/ContentModelValidator;
    :goto_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclContentModelValidator:[[Lmf/org/apache/xerces/impl/dtd/models/ContentModelValidator;

    aget-object v1, v1, v7

    aput-object v0, v1, v11

    move-object v1, v0

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    if-ne v10, v1, :cond_3

    invoke-direct {p0, v9}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->createChildModel(I)Lmf/org/apache/xerces/impl/dtd/models/ContentModelValidator;

    move-result-object v0

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unknown content type for a element decl in getElementContentModelValidator() in AbstractDTDGrammar class"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getElementDecl(ILmf/org/apache/xerces/impl/dtd/XMLElementDecl;)Z
    .locals 8
    .param p1, "elementDeclIndex"    # I
    .param p2, "elementDecl"    # Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v6, -0x1

    if-ltz p1, :cond_0

    iget v4, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclCount:I

    if-lt p1, v4, :cond_1

    :cond_0
    move v3, v2

    :goto_0
    return v3

    :cond_1
    shr-int/lit8 v0, p1, 0x8

    .local v0, "chunk":I
    and-int/lit16 v1, p1, 0xff

    .local v1, "index":I
    iget-object v4, p2, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclName:[[Lmf/org/apache/xerces/xni/QName;

    aget-object v5, v5, v0

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/xni/QName;->setValues(Lmf/org/apache/xerces/xni/QName;)V

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclType:[[S

    aget-object v4, v4, v0

    aget-short v4, v4, v1

    if-ne v4, v6, :cond_4

    iput-short v6, p2, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;->type:S

    iget-object v4, p2, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iput-boolean v2, v4, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->list:Z

    :goto_1
    iget-short v2, p2, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;->type:S

    const/4 v4, 0x3

    if-eq v2, v4, :cond_2

    iget-short v2, p2, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;->type:S

    const/4 v4, 0x2

    if-ne v2, v4, :cond_3

    :cond_2
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getElementContentModelValidator(I)Lmf/org/apache/xerces/impl/dtd/models/ContentModelValidator;

    move-result-object v2

    iput-object v2, p2, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;->contentModelValidator:Lmf/org/apache/xerces/impl/dtd/models/ContentModelValidator;

    :cond_3
    iget-object v2, p2, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iput-object v7, v2, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->datatypeValidator:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    iget-object v2, p2, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iput-short v6, v2, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->defaultType:S

    iget-object v2, p2, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iput-object v7, v2, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->defaultValue:Ljava/lang/String;

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclType:[[S

    aget-object v4, v4, v0

    aget-short v4, v4, v1

    and-int/lit16 v4, v4, -0x81

    int-to-short v4, v4

    iput-short v4, p2, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;->type:S

    iget-object v4, p2, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclType:[[S

    aget-object v5, v5, v0

    aget-short v5, v5, v1

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_5

    move v2, v3

    :cond_5
    iput-boolean v2, v4, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->list:Z

    goto :goto_1
.end method

.method public getElementDeclIndex(Ljava/lang/String;)I
    .locals 2
    .param p1, "elementDeclName"    # Ljava/lang/String;

    .prologue
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementIndexMap:Lmf/org/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;

    invoke-virtual {v1, p1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;->get(Ljava/lang/String;)I

    move-result v0

    .local v0, "mapping":I
    return v0
.end method

.method public getElementDeclIndex(Lmf/org/apache/xerces/xni/QName;)I
    .locals 1
    .param p1, "elementDeclQName"    # Lmf/org/apache/xerces/xni/QName;

    .prologue
    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getElementDeclIndex(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getElementDeclIsExternal(I)Z
    .locals 4
    .param p1, "elementDeclIndex"    # I

    .prologue
    const/4 v2, 0x0

    if-gez p1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    shr-int/lit8 v0, p1, 0x8

    .local v0, "chunk":I
    and-int/lit16 v1, p1, 0xff

    .local v1, "index":I
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclIsExternal:[[I

    aget-object v3, v3, v0

    aget v3, v3, v1

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method getElementDeclName(I)Lmf/org/apache/xerces/xni/QName;
    .locals 3
    .param p1, "elementDeclIndex"    # I

    .prologue
    if-ltz p1, :cond_0

    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclCount:I

    if-lt p1, v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_1
    shr-int/lit8 v0, p1, 0x8

    .local v0, "chunk":I
    and-int/lit16 v1, p1, 0xff

    .local v1, "index":I
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclName:[[Lmf/org/apache/xerces/xni/QName;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    goto :goto_0
.end method

.method public getEntityDecl(ILmf/org/apache/xerces/impl/dtd/XMLEntityDecl;)Z
    .locals 12
    .param p1, "entityDeclIndex"    # I
    .param p2, "entityDecl"    # Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;

    .prologue
    const/4 v11, 0x1

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityCount:I

    if-lt p1, v1, :cond_1

    :cond_0
    move v11, v0

    :goto_0
    return v11

    :cond_1
    shr-int/lit8 v9, p1, 0x8

    .local v9, "chunk":I
    and-int/lit16 v10, p1, 0xff

    .local v10, "index":I
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityName:[[Ljava/lang/String;

    aget-object v1, v1, v9

    aget-object v1, v1, v10

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityPublicId:[[Ljava/lang/String;

    aget-object v2, v2, v9

    aget-object v2, v2, v10

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntitySystemId:[[Ljava/lang/String;

    aget-object v3, v3, v9

    aget-object v3, v3, v10

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityBaseSystemId:[[Ljava/lang/String;

    aget-object v4, v4, v9

    aget-object v4, v4, v10

    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityNotation:[[Ljava/lang/String;

    aget-object v5, v5, v9

    aget-object v5, v5, v10

    iget-object v6, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityValue:[[Ljava/lang/String;

    aget-object v6, v6, v9

    aget-object v6, v6, v10

    iget-object v7, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityIsPE:[[B

    aget-object v7, v7, v9

    aget-byte v7, v7, v10

    if-nez v7, :cond_2

    move v7, v0

    :goto_1
    iget-object v8, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityInExternal:[[B

    aget-object v8, v8, v9

    aget-byte v8, v8, v10

    if-nez v8, :cond_3

    move v8, v0

    :goto_2
    move-object v0, p2

    invoke-virtual/range {v0 .. v8}, Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_0

    :cond_2
    move v7, v11

    goto :goto_1

    :cond_3
    move v8, v11

    goto :goto_2
.end method

.method public getEntityDeclIndex(Ljava/lang/String;)I
    .locals 1
    .param p1, "entityDeclName"    # Ljava/lang/String;

    .prologue
    if-nez p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityIndexMap:Lmf/org/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;->get(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getFirstAttributeDeclIndex(I)I
    .locals 3
    .param p1, "elementDeclIndex"    # I

    .prologue
    shr-int/lit8 v0, p1, 0x8

    .local v0, "chunk":I
    and-int/lit16 v1, p1, 0xff

    .local v1, "index":I
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclFirstAttributeDeclIndex:[[I

    aget-object v2, v2, v0

    aget v2, v2, v1

    return v2
.end method

.method public getFirstElementDeclIndex()I
    .locals 1

    .prologue
    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclCount:I

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getGrammarDescription()Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;
    .locals 1

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fGrammarDescription:Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;

    return-object v0
.end method

.method public getNextAttributeDeclIndex(I)I
    .locals 3
    .param p1, "attributeDeclIndex"    # I

    .prologue
    shr-int/lit8 v0, p1, 0x8

    .local v0, "chunk":I
    and-int/lit16 v1, p1, 0xff

    .local v1, "index":I
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclNextAttributeDeclIndex:[[I

    aget-object v2, v2, v0

    aget v2, v2, v1

    return v2
.end method

.method public getNextElementDeclIndex(I)I
    .locals 1
    .param p1, "elementDeclIndex"    # I

    .prologue
    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclCount:I

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getNotationDecl(ILmf/org/apache/xerces/impl/dtd/XMLNotationDecl;)Z
    .locals 6
    .param p1, "notationDeclIndex"    # I
    .param p2, "notationDecl"    # Lmf/org/apache/xerces/impl/dtd/XMLNotationDecl;

    .prologue
    if-ltz p1, :cond_0

    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNotationCount:I

    if-lt p1, v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    shr-int/lit8 v0, p1, 0x8

    .local v0, "chunk":I
    and-int/lit16 v1, p1, 0xff

    .local v1, "index":I
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNotationName:[[Ljava/lang/String;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNotationPublicId:[[Ljava/lang/String;

    aget-object v3, v3, v0

    aget-object v3, v3, v1

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNotationSystemId:[[Ljava/lang/String;

    aget-object v4, v4, v0

    aget-object v4, v4, v1

    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNotationBaseSystemId:[[Ljava/lang/String;

    aget-object v5, v5, v0

    aget-object v5, v5, v1

    invoke-virtual {p2, v2, v3, v4, v5}, Lmf/org/apache/xerces/impl/dtd/XMLNotationDecl;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public getNotationDeclIndex(Ljava/lang/String;)I
    .locals 1
    .param p1, "notationDeclName"    # Ljava/lang/String;

    .prologue
    if-nez p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNotationIndexMap:Lmf/org/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;->get(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getSymbolTable()Lmf/org/apache/xerces/util/SymbolTable;
    .locals 1

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    return-object v0
.end method

.method public ignoredCharacters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .param p1, "text"    # Lmf/org/apache/xerces/xni/XMLString;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    return-void
.end method

.method protected initializeContentModelStack()V
    .locals 6

    .prologue
    const/16 v3, 0x8

    const/4 v5, -0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fOpStack:[S

    if-nez v2, :cond_1

    new-array v2, v3, [S

    iput-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fOpStack:[S

    new-array v2, v3, [I

    iput-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNodeIndexStack:[I

    new-array v2, v3, [I

    iput-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fPrevNodeIndexStack:[I

    :cond_0
    :goto_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fOpStack:[S

    iget v3, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    aput-short v5, v2, v3

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNodeIndexStack:[I

    iget v3, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    aput v5, v2, v3

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fPrevNodeIndexStack:[I

    iget v3, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    aput v5, v2, v3

    return-void

    :cond_1
    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fOpStack:[S

    array-length v3, v3

    if-ne v2, v3, :cond_0

    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    mul-int/lit8 v2, v2, 0x2

    new-array v1, v2, [S

    .local v1, "newStack":[S
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fOpStack:[S

    iget v3, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fOpStack:[S

    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    mul-int/lit8 v2, v2, 0x2

    new-array v0, v2, [I

    .local v0, "newIntStack":[I
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNodeIndexStack:[I

    iget v3, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNodeIndexStack:[I

    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    mul-int/lit8 v2, v2, 0x2

    new-array v0, v2, [I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fPrevNodeIndexStack:[I

    iget v3, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fPrevNodeIndexStack:[I

    goto :goto_0
.end method

.method public internalEntityDecl(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "text"    # Lmf/org/apache/xerces/xni/XMLString;
    .param p3, "nonNormalizedText"    # Lmf/org/apache/xerces/xni/XMLString;
    .param p4, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getEntityDeclIndex(Ljava/lang/String;)I

    move-result v9

    .local v9, "entityIndex":I
    const/4 v1, -0x1

    if-ne v9, v1, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->createEntityDecl()I

    move-result v9

    const-string v1, "%"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    .local v7, "isPE":Z
    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fReadingExternalDTD:Z

    if-nez v1, :cond_1

    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fPEDepth:I

    if-gtz v1, :cond_1

    const/4 v8, 0x0

    .local v8, "inExternal":Z
    :goto_0
    new-instance v0, Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;-><init>()V

    .local v0, "entityDecl":Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;
    invoke-virtual {p2}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v8}, Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-virtual {p0, v9, v0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->setEntityDecl(ILmf/org/apache/xerces/impl/dtd/XMLEntityDecl;)V

    .end local v0    # "entityDecl":Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;
    .end local v7    # "isPE":Z
    .end local v8    # "inExternal":Z
    :cond_0
    return-void

    .restart local v7    # "isPE":Z
    :cond_1
    const/4 v8, 0x1

    goto :goto_0
.end method

.method public isCDATAAttribute(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/QName;)Z
    .locals 2
    .param p1, "elName"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "atName"    # Lmf/org/apache/xerces/xni/QName;

    .prologue
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getElementDeclIndex(Lmf/org/apache/xerces/xni/QName;)I

    move-result v0

    .local v0, "elDeclIdx":I
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getAttributeDecl(ILmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->type:S

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isEntityDeclared(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getEntityDeclIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEntityUnparsed(Ljava/lang/String;)Z
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getEntityDeclIndex(Ljava/lang/String;)I

    move-result v1

    .local v1, "entityIndex":I
    const/4 v4, -0x1

    if-le v1, v4, :cond_0

    shr-int/lit8 v0, v1, 0x8

    .local v0, "chunk":I
    and-int/lit16 v2, v1, 0xff

    .local v2, "index":I
    iget-object v4, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityNotation:[[Ljava/lang/String;

    aget-object v4, v4, v0

    aget-object v4, v4, v2

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    .end local v0    # "chunk":I
    .end local v2    # "index":I
    :cond_0
    return v3
.end method

.method isImmutable()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fIsImmutable:Z

    return v0
.end method

.method public isNamespaceAware()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public notationDecl(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "identifier"    # Lmf/org/apache/xerces/xni/XMLResourceIdentifier;
    .param p3, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    new-instance v0, Lmf/org/apache/xerces/impl/dtd/XMLNotationDecl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dtd/XMLNotationDecl;-><init>()V

    .local v0, "notationDecl":Lmf/org/apache/xerces/impl/dtd/XMLNotationDecl;
    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, p1, v2, v3, v4}, Lmf/org/apache/xerces/impl/dtd/XMLNotationDecl;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getNotationDeclIndex(Ljava/lang/String;)I

    move-result v1

    .local v1, "notationIndex":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->createNotationDecl()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->setNotationDecl(ILmf/org/apache/xerces/impl/dtd/XMLNotationDecl;)V

    :cond_0
    return-void
.end method

.method public occurrence(SLmf/org/apache/xerces/xni/Augmentations;)V
    .locals 7
    .param p1, "occurrence"    # S
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x3

    const/4 v4, 0x2

    const/4 v5, -0x1

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fMixed:Z

    if-nez v0, :cond_0

    if-ne p1, v4, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNodeIndexStack:[I

    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    const/4 v2, 0x1

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNodeIndexStack:[I

    iget v4, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    aget v3, v3, v4

    invoke-virtual {p0, v2, v3, v5}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->addContentSpecNode(SII)I

    move-result v2

    aput v2, v0, v1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne p1, v6, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNodeIndexStack:[I

    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNodeIndexStack:[I

    iget v3, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    aget v2, v2, v3

    invoke-virtual {p0, v4, v2, v5}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->addContentSpecNode(SII)I

    move-result v2

    aput v2, v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNodeIndexStack:[I

    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNodeIndexStack:[I

    iget v3, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    aget v2, v2, v3

    invoke-virtual {p0, v6, v2, v5}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->addContentSpecNode(SII)I

    move-result v2

    aput v2, v0, v1

    goto :goto_0
.end method

.method public pcdata(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fMixed:Z

    return-void
.end method

.method public printAttributes(I)V
    .locals 4
    .param p1, "elementDeclIndex"    # I

    .prologue
    const/4 v3, -0x1

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getFirstAttributeDeclIndex(I)I

    move-result v0

    .local v0, "attributeDeclIndex":I
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->print(I)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_0
    :goto_0
    if-ne v0, v3, :cond_1

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, " ]"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    :cond_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(C)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->print(I)V

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->printAttribute(I)V

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getNextAttributeDeclIndex(I)I

    move-result v0

    if-eq v0, v3, :cond_0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public printElements()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .local v1, "elementDeclIndex":I
    new-instance v0, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;-><init>()V

    .local v0, "elementDecl":Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;
    :goto_0
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "elementDeclIndex":I
    .local v2, "elementDeclIndex":I
    invoke-virtual {p0, v1, v0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getElementDecl(ILmf/org/apache/xerces/impl/dtd/XMLElementDecl;)Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "element decl: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;->name:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v5, v5, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v1, v2

    .end local v2    # "elementDeclIndex":I
    .restart local v1    # "elementDeclIndex":I
    goto :goto_0
.end method

.method public processingInstruction(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Lmf/org/apache/xerces/xni/XMLString;
    .param p3, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    return-void
.end method

.method protected putElementNameMapping(Lmf/org/apache/xerces/xni/QName;II)V
    .locals 0
    .param p1, "name"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "scope"    # I
    .param p3, "elementDeclIndex"    # I

    .prologue
    return-void
.end method

.method public separator(SLmf/org/apache/xerces/xni/Augmentations;)V
    .locals 8
    .param p1, "separator"    # S
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v2, -0x1

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fMixed:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fOpStack:[S

    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    aget-short v0, v0, v1

    if-eq v0, v7, :cond_2

    if-nez p1, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fPrevNodeIndexStack:[I

    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    aget v0, v0, v1

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNodeIndexStack:[I

    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fOpStack:[S

    iget v3, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    aget-short v2, v2, v3

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fPrevNodeIndexStack:[I

    iget v4, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    aget v3, v3, v4

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNodeIndexStack:[I

    iget v5, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    aget v4, v4, v5

    invoke-virtual {p0, v2, v3, v4}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->addContentSpecNode(SII)I

    move-result v2

    aput v2, v0, v1

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fPrevNodeIndexStack:[I

    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNodeIndexStack:[I

    iget v3, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    aget v2, v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fOpStack:[S

    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    aput-short v6, v0, v1

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fOpStack:[S

    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    aget-short v0, v0, v1

    if-eq v0, v6, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fPrevNodeIndexStack:[I

    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    aget v0, v0, v1

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNodeIndexStack:[I

    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fOpStack:[S

    iget v3, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    aget-short v2, v2, v3

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fPrevNodeIndexStack:[I

    iget v4, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    aget v3, v3, v4

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNodeIndexStack:[I

    iget v5, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    aget v4, v4, v5

    invoke-virtual {p0, v2, v3, v4}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->addContentSpecNode(SII)I

    move-result v2

    aput v2, v0, v1

    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fPrevNodeIndexStack:[I

    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNodeIndexStack:[I

    iget v3, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    aget v2, v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fOpStack:[S

    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    aput-short v7, v0, v1

    goto :goto_0
.end method

.method protected setAttributeDecl(IILmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;)V
    .locals 8
    .param p1, "elementDeclIndex"    # I
    .param p2, "attributeDeclIndex"    # I
    .param p3, "attributeDecl"    # Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    .prologue
    const/4 v7, -0x1

    shr-int/lit8 v0, p2, 0x8

    .local v0, "attrChunk":I
    and-int/lit16 v1, p2, 0xff

    .local v1, "attrIndex":I
    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclName:[[Lmf/org/apache/xerces/xni/QName;

    aget-object v5, v5, v0

    aget-object v5, v5, v1

    iget-object v6, p3, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->name:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v5, v6}, Lmf/org/apache/xerces/xni/QName;->setValues(Lmf/org/apache/xerces/xni/QName;)V

    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclType:[[S

    aget-object v5, v5, v0

    iget-object v6, p3, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iget-short v6, v6, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->type:S

    aput-short v6, v5, v1

    iget-object v5, p3, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iget-boolean v5, v5, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->list:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclType:[[S

    aget-object v5, v5, v0

    aget-short v6, v5, v1

    or-int/lit16 v6, v6, 0x80

    int-to-short v6, v6

    aput-short v6, v5, v1

    :cond_0
    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclEnumeration:[[[Ljava/lang/String;

    aget-object v5, v5, v0

    iget-object v6, p3, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->enumeration:[Ljava/lang/String;

    aput-object v6, v5, v1

    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclDefaultType:[[S

    aget-object v5, v5, v0

    iget-object v6, p3, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iget-short v6, v6, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->defaultType:S

    aput-short v6, v5, v1

    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclDatatypeValidator:[[Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    aget-object v5, v5, v0

    iget-object v6, p3, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->datatypeValidator:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    aput-object v6, v5, v1

    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclDefaultValue:[[Ljava/lang/String;

    aget-object v5, v5, v0

    iget-object v6, p3, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->defaultValue:Ljava/lang/String;

    aput-object v6, v5, v1

    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclNonNormalizedDefaultValue:[[Ljava/lang/String;

    aget-object v5, v5, v0

    iget-object v6, p3, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->nonNormalizedDefaultValue:Ljava/lang/String;

    aput-object v6, v5, v1

    shr-int/lit8 v2, p1, 0x8

    .local v2, "elemChunk":I
    and-int/lit16 v3, p1, 0xff

    .local v3, "elemIndex":I
    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclFirstAttributeDeclIndex:[[I

    aget-object v5, v5, v2

    aget v4, v5, v3

    .local v4, "index":I
    :goto_0
    if-ne v4, v7, :cond_3

    :cond_1
    if-ne v4, v7, :cond_2

    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclFirstAttributeDeclIndex:[[I

    aget-object v5, v5, v2

    aget v5, v5, v3

    if-ne v5, v7, :cond_4

    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclFirstAttributeDeclIndex:[[I

    aget-object v5, v5, v2

    aput p2, v5, v3

    :goto_1
    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclLastAttributeDeclIndex:[[I

    aget-object v5, v5, v2

    aput p2, v5, v3

    :cond_2
    return-void

    :cond_3
    if-eq v4, p2, :cond_1

    shr-int/lit8 v0, v4, 0x8

    and-int/lit16 v1, v4, 0xff

    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclNextAttributeDeclIndex:[[I

    aget-object v5, v5, v0

    aget v4, v5, v1

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclLastAttributeDeclIndex:[[I

    aget-object v5, v5, v2

    aget v4, v5, v3

    shr-int/lit8 v0, v4, 0x8

    and-int/lit16 v1, v4, 0xff

    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDeclNextAttributeDeclIndex:[[I

    aget-object v5, v5, v0

    aput p2, v5, v1

    goto :goto_1
.end method

.method protected setContentSpec(ILmf/org/apache/xerces/impl/dtd/XMLContentSpec;)V
    .locals 4
    .param p1, "contentSpecIndex"    # I
    .param p2, "contentSpec"    # Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;

    .prologue
    shr-int/lit8 v0, p1, 0x8

    .local v0, "chunk":I
    and-int/lit16 v1, p1, 0xff

    .local v1, "index":I
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fContentSpecType:[[S

    aget-object v2, v2, v0

    iget-short v3, p2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    aput-short v3, v2, v1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fContentSpecValue:[[Ljava/lang/Object;

    aget-object v2, v2, v0

    iget-object v3, p2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    aput-object v3, v2, v1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fContentSpecOtherValue:[[Ljava/lang/Object;

    aget-object v2, v2, v0

    iget-object v3, p2, Lmf/org/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    aput-object v3, v2, v1

    return-void
.end method

.method protected setContentSpecIndex(II)V
    .locals 3
    .param p1, "elementDeclIndex"    # I
    .param p2, "contentSpecIndex"    # I

    .prologue
    if-ltz p1, :cond_0

    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclCount:I

    if-lt p1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    shr-int/lit8 v0, p1, 0x8

    .local v0, "chunk":I
    and-int/lit16 v1, p1, 0xff

    .local v1, "index":I
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclContentSpecIndex:[[I

    aget-object v2, v2, v0

    aput p2, v2, v1

    goto :goto_0
.end method

.method public setDTDContentModelSource(Lmf/org/apache/xerces/xni/parser/XMLDTDContentModelSource;)V
    .locals 0
    .param p1, "source"    # Lmf/org/apache/xerces/xni/parser/XMLDTDContentModelSource;

    .prologue
    iput-object p1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDTDContentModelSource:Lmf/org/apache/xerces/xni/parser/XMLDTDContentModelSource;

    return-void
.end method

.method public setDTDSource(Lmf/org/apache/xerces/xni/parser/XMLDTDSource;)V
    .locals 0
    .param p1, "source"    # Lmf/org/apache/xerces/xni/parser/XMLDTDSource;

    .prologue
    iput-object p1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDTDSource:Lmf/org/apache/xerces/xni/parser/XMLDTDSource;

    return-void
.end method

.method protected setElementDecl(ILmf/org/apache/xerces/impl/dtd/XMLElementDecl;)V
    .locals 4
    .param p1, "elementDeclIndex"    # I
    .param p2, "elementDecl"    # Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;

    .prologue
    if-ltz p1, :cond_0

    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclCount:I

    if-lt p1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    shr-int/lit8 v0, p1, 0x8

    .local v0, "chunk":I
    and-int/lit16 v1, p1, 0xff

    .local v1, "index":I
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclName:[[Lmf/org/apache/xerces/xni/QName;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    iget-object v3, p2, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;->name:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/xni/QName;->setValues(Lmf/org/apache/xerces/xni/QName;)V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclType:[[S

    aget-object v2, v2, v0

    iget-short v3, p2, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;->type:S

    aput-short v3, v2, v1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclContentModelValidator:[[Lmf/org/apache/xerces/impl/dtd/models/ContentModelValidator;

    aget-object v2, v2, v0

    iget-object v3, p2, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;->contentModelValidator:Lmf/org/apache/xerces/impl/dtd/models/ContentModelValidator;

    aput-object v3, v2, v1

    iget-object v2, p2, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iget-boolean v2, v2, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->list:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclType:[[S

    aget-object v2, v2, v0

    aget-short v3, v2, v1

    or-int/lit16 v3, v3, 0x80

    int-to-short v3, v3

    aput-short v3, v2, v1

    :cond_2
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementIndexMap:Lmf/org/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;

    iget-object v3, p2, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {v2, v3, p1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;->put(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected setEntityDecl(ILmf/org/apache/xerces/impl/dtd/XMLEntityDecl;)V
    .locals 6
    .param p1, "entityDeclIndex"    # I
    .param p2, "entityDecl"    # Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    shr-int/lit8 v0, p1, 0x8

    .local v0, "chunk":I
    and-int/lit16 v1, p1, 0xff

    .local v1, "index":I
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityName:[[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v5, p2, Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;->name:Ljava/lang/String;

    aput-object v5, v2, v1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityValue:[[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v5, p2, Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;->value:Ljava/lang/String;

    aput-object v5, v2, v1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityPublicId:[[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v5, p2, Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;->publicId:Ljava/lang/String;

    aput-object v5, v2, v1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntitySystemId:[[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v5, p2, Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;->systemId:Ljava/lang/String;

    aput-object v5, v2, v1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityBaseSystemId:[[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v5, p2, Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;->baseSystemId:Ljava/lang/String;

    aput-object v5, v2, v1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityNotation:[[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v5, p2, Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;->notation:Ljava/lang/String;

    aput-object v5, v2, v1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityIsPE:[[B

    aget-object v5, v2, v0

    iget-boolean v2, p2, Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;->isPE:Z

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    aput-byte v2, v5, v1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityInExternal:[[B

    aget-object v2, v2, v0

    iget-boolean v5, p2, Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;->inExternal:Z

    if-eqz v5, :cond_1

    :goto_1
    aput-byte v3, v2, v1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fEntityIndexMap:Lmf/org/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;

    iget-object v3, p2, Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, p1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;->put(Ljava/lang/String;I)V

    return-void

    :cond_0
    move v2, v4

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1
.end method

.method protected setFirstAttributeDeclIndex(II)V
    .locals 3
    .param p1, "elementDeclIndex"    # I
    .param p2, "newFirstAttrIndex"    # I

    .prologue
    if-ltz p1, :cond_0

    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclCount:I

    if-lt p1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    shr-int/lit8 v0, p1, 0x8

    .local v0, "chunk":I
    and-int/lit16 v1, p1, 0xff

    .local v1, "index":I
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclFirstAttributeDeclIndex:[[I

    aget-object v2, v2, v0

    aput p2, v2, v1

    goto :goto_0
.end method

.method protected setNotationDecl(ILmf/org/apache/xerces/impl/dtd/XMLNotationDecl;)V
    .locals 4
    .param p1, "notationDeclIndex"    # I
    .param p2, "notationDecl"    # Lmf/org/apache/xerces/impl/dtd/XMLNotationDecl;

    .prologue
    shr-int/lit8 v0, p1, 0x8

    .local v0, "chunk":I
    and-int/lit16 v1, p1, 0xff

    .local v1, "index":I
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNotationName:[[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v3, p2, Lmf/org/apache/xerces/impl/dtd/XMLNotationDecl;->name:Ljava/lang/String;

    aput-object v3, v2, v1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNotationPublicId:[[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v3, p2, Lmf/org/apache/xerces/impl/dtd/XMLNotationDecl;->publicId:Ljava/lang/String;

    aput-object v3, v2, v1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNotationSystemId:[[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v3, p2, Lmf/org/apache/xerces/impl/dtd/XMLNotationDecl;->systemId:Ljava/lang/String;

    aput-object v3, v2, v1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNotationBaseSystemId:[[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v3, p2, Lmf/org/apache/xerces/impl/dtd/XMLNotationDecl;->baseSystemId:Ljava/lang/String;

    aput-object v3, v2, v1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNotationIndexMap:Lmf/org/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;

    iget-object v3, p2, Lmf/org/apache/xerces/impl/dtd/XMLNotationDecl;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, p1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;->put(Ljava/lang/String;I)V

    return-void
.end method

.method public startAttlist(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .param p1, "elementName"    # Ljava/lang/String;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    return-void
.end method

.method public startConditional(SLmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .param p1, "type"    # S
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    return-void
.end method

.method public startContentModel(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .param p1, "elementName"    # Ljava/lang/String;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDeclTab:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;

    .local v0, "elementDecl":Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;
    if-eqz v0, :cond_0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fElementDecl:Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;

    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->initializeContentModelStack()V

    return-void
.end method

.method public startDTD(Lmf/org/apache/xerces/xni/XMLLocator;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "locator"    # Lmf/org/apache/xerces/xni/XMLLocator;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fOpStack:[S

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fNodeIndexStack:[I

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fPrevNodeIndexStack:[I

    return-void
.end method

.method public startExternalSubset(Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "identifier"    # Lmf/org/apache/xerces/xni/XMLResourceIdentifier;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fReadingExternalDTD:Z

    return-void
.end method

.method public startGroup(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fDepth:I

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->initializeContentModelStack()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fMixed:Z

    return-void
.end method

.method public startParameterEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "identifier"    # Lmf/org/apache/xerces/xni/XMLResourceIdentifier;
    .param p3, "encoding"    # Ljava/lang/String;
    .param p4, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fPEDepth:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fPEntityStack:[Z

    array-length v2, v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fPEntityStack:[Z

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [Z

    .local v0, "entityarray":[Z
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fPEntityStack:[Z

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fPEntityStack:[Z

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fPEntityStack:[Z

    .end local v0    # "entityarray":[Z
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fPEntityStack:[Z

    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fPEDepth:I

    iget-boolean v3, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fReadingExternalDTD:Z

    aput-boolean v3, v1, v2

    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fPEDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fPEDepth:I

    return-void
.end method

.method public textDecl(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    return-void
.end method

.method public unparsedEntityDecl(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "identifier"    # Lmf/org/apache/xerces/xni/XMLResourceIdentifier;
    .param p3, "notation"    # Ljava/lang/String;
    .param p4, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    new-instance v0, Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;-><init>()V

    .local v0, "entityDecl":Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;
    const-string v1, "%"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    .local v7, "isPE":Z
    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fReadingExternalDTD:Z

    if-nez v1, :cond_1

    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->fPEDepth:I

    if-gtz v1, :cond_1

    const/4 v8, 0x0

    .local v8, "inExternal":Z
    :goto_0
    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    move-object v1, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v8}, Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getEntityDeclIndex(Ljava/lang/String;)I

    move-result v9

    .local v9, "entityIndex":I
    const/4 v1, -0x1

    if-ne v9, v1, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->createEntityDecl()I

    move-result v9

    invoke-virtual {p0, v9, v0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->setEntityDecl(ILmf/org/apache/xerces/impl/dtd/XMLEntityDecl;)V

    :cond_0
    return-void

    .end local v8    # "inExternal":Z
    .end local v9    # "entityIndex":I
    :cond_1
    const/4 v8, 0x1

    goto :goto_0
.end method
