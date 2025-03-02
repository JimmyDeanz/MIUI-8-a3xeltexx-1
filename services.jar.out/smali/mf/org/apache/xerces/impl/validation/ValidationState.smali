.class public Lmf/org/apache/xerces/impl/validation/ValidationState;
.super Ljava/lang/Object;
.source "ValidationState.java"

# interfaces
.implements Lmf/org/apache/xerces/impl/dv/ValidationContext;


# static fields
.field private static final fNullValue:Ljava/lang/Object;


# instance fields
.field private fEntityState:Lmf/org/apache/xerces/impl/validation/EntityState;

.field private fExtraChecking:Z

.field private fFacetChecking:Z

.field private final fIdRefTable:Ljava/util/HashMap;

.field private final fIdTable:Ljava/util/HashMap;

.field private fLocale:Ljava/util/Locale;

.field private fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

.field private fNamespaces:Z

.field private fNormalize:Z

.field private fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lmf/org/apache/xerces/impl/validation/ValidationState;->fNullValue:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/validation/ValidationState;->fExtraChecking:Z

    .line 44
    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/validation/ValidationState;->fFacetChecking:Z

    .line 45
    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/validation/ValidationState;->fNormalize:Z

    .line 46
    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/validation/ValidationState;->fNamespaces:Z

    .line 48
    iput-object v1, p0, Lmf/org/apache/xerces/impl/validation/ValidationState;->fEntityState:Lmf/org/apache/xerces/impl/validation/EntityState;

    .line 49
    iput-object v1, p0, Lmf/org/apache/xerces/impl/validation/ValidationState;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    .line 50
    iput-object v1, p0, Lmf/org/apache/xerces/impl/validation/ValidationState;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    .line 51
    iput-object v1, p0, Lmf/org/apache/xerces/impl/validation/ValidationState;->fLocale:Ljava/util/Locale;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/validation/ValidationState;->fIdTable:Ljava/util/HashMap;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/validation/ValidationState;->fIdRefTable:Ljava/util/HashMap;

    .line 38
    return-void
.end method


# virtual methods
.method public addId(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 168
    iget-object v0, p0, Lmf/org/apache/xerces/impl/validation/ValidationState;->fIdTable:Ljava/util/HashMap;

    sget-object v1, Lmf/org/apache/xerces/impl/validation/ValidationState;->fNullValue:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    return-void
.end method

.method public addIdRef(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 173
    iget-object v0, p0, Lmf/org/apache/xerces/impl/validation/ValidationState;->fIdRefTable:Ljava/util/HashMap;

    sget-object v1, Lmf/org/apache/xerces/impl/validation/ValidationState;->fNullValue:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    return-void
.end method

.method public checkIDRefID()Ljava/lang/String;
    .locals 3

    .prologue
    .line 94
    iget-object v2, p0, Lmf/org/apache/xerces/impl/validation/ValidationState;->fIdRefTable:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 96
    .local v0, "iter":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 102
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 97
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 98
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lmf/org/apache/xerces/impl/validation/ValidationState;->fIdTable:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lmf/org/apache/xerces/impl/validation/ValidationState;->fLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public getSymbol(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "symbol"    # Ljava/lang/String;

    .prologue
    .line 178
    iget-object v0, p0, Lmf/org/apache/xerces/impl/validation/ValidationState;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lmf/org/apache/xerces/impl/validation/ValidationState;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 184
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 188
    iget-object v0, p0, Lmf/org/apache/xerces/impl/validation/ValidationState;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lmf/org/apache/xerces/impl/validation/ValidationState;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 191
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEntityDeclared(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 151
    iget-object v0, p0, Lmf/org/apache/xerces/impl/validation/ValidationState;->fEntityState:Lmf/org/apache/xerces/impl/validation/EntityState;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lmf/org/apache/xerces/impl/validation/ValidationState;->fEntityState:Lmf/org/apache/xerces/impl/validation/EntityState;

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/validation/ValidationState;->getSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/impl/validation/EntityState;->isEntityDeclared(Ljava/lang/String;)Z

    move-result v0

    .line 154
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEntityUnparsed(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 157
    iget-object v0, p0, Lmf/org/apache/xerces/impl/validation/ValidationState;->fEntityState:Lmf/org/apache/xerces/impl/validation/EntityState;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lmf/org/apache/xerces/impl/validation/ValidationState;->fEntityState:Lmf/org/apache/xerces/impl/validation/EntityState;

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/validation/ValidationState;->getSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/impl/validation/EntityState;->isEntityUnparsed(Ljava/lang/String;)Z

    move-result v0

    .line 160
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIdDeclared(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 165
    iget-object v0, p0, Lmf/org/apache/xerces/impl/validation/ValidationState;->fIdTable:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public needExtraChecking()Z
    .locals 1

    .prologue
    .line 133
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/validation/ValidationState;->fExtraChecking:Z

    return v0
.end method

.method public needFacetChecking()Z
    .locals 1

    .prologue
    .line 138
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/validation/ValidationState;->fFacetChecking:Z

    return v0
.end method

.method public needToNormalize()Z
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/validation/ValidationState;->fNormalize:Z

    return v0
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 106
    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/validation/ValidationState;->fExtraChecking:Z

    .line 107
    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/validation/ValidationState;->fFacetChecking:Z

    .line 108
    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/validation/ValidationState;->fNamespaces:Z

    .line 109
    iget-object v0, p0, Lmf/org/apache/xerces/impl/validation/ValidationState;->fIdTable:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 110
    iget-object v0, p0, Lmf/org/apache/xerces/impl/validation/ValidationState;->fIdRefTable:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 111
    iput-object v1, p0, Lmf/org/apache/xerces/impl/validation/ValidationState;->fEntityState:Lmf/org/apache/xerces/impl/validation/EntityState;

    .line 112
    iput-object v1, p0, Lmf/org/apache/xerces/impl/validation/ValidationState;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    .line 113
    iput-object v1, p0, Lmf/org/apache/xerces/impl/validation/ValidationState;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    .line 114
    return-void
.end method

.method public resetIDTables()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lmf/org/apache/xerces/impl/validation/ValidationState;->fIdTable:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 124
    iget-object v0, p0, Lmf/org/apache/xerces/impl/validation/ValidationState;->fIdRefTable:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 125
    return-void
.end method

.method public setEntityState(Lmf/org/apache/xerces/impl/validation/EntityState;)V
    .locals 0
    .param p1, "state"    # Lmf/org/apache/xerces/impl/validation/EntityState;

    .prologue
    .line 78
    iput-object p1, p0, Lmf/org/apache/xerces/impl/validation/ValidationState;->fEntityState:Lmf/org/apache/xerces/impl/validation/EntityState;

    .line 79
    return-void
.end method

.method public setExtraChecking(Z)V
    .locals 0
    .param p1, "newValue"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lmf/org/apache/xerces/impl/validation/ValidationState;->fExtraChecking:Z

    .line 63
    return-void
.end method

.method public setFacetChecking(Z)V
    .locals 0
    .param p1, "newValue"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lmf/org/apache/xerces/impl/validation/ValidationState;->fFacetChecking:Z

    .line 67
    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 0
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 197
    iput-object p1, p0, Lmf/org/apache/xerces/impl/validation/ValidationState;->fLocale:Ljava/util/Locale;

    .line 198
    return-void
.end method

.method public setNamespaceSupport(Lmf/org/apache/xerces/xni/NamespaceContext;)V
    .locals 0
    .param p1, "namespace"    # Lmf/org/apache/xerces/xni/NamespaceContext;

    .prologue
    .line 82
    iput-object p1, p0, Lmf/org/apache/xerces/impl/validation/ValidationState;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    .line 83
    return-void
.end method

.method public setNormalizationRequired(Z)V
    .locals 0
    .param p1, "newValue"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Lmf/org/apache/xerces/impl/validation/ValidationState;->fNormalize:Z

    .line 71
    return-void
.end method

.method public setSymbolTable(Lmf/org/apache/xerces/util/SymbolTable;)V
    .locals 0
    .param p1, "sTable"    # Lmf/org/apache/xerces/util/SymbolTable;

    .prologue
    .line 86
    iput-object p1, p0, Lmf/org/apache/xerces/impl/validation/ValidationState;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    .line 87
    return-void
.end method

.method public setUsingNamespaces(Z)V
    .locals 0
    .param p1, "newValue"    # Z

    .prologue
    .line 74
    iput-boolean p1, p0, Lmf/org/apache/xerces/impl/validation/ValidationState;->fNamespaces:Z

    .line 75
    return-void
.end method

.method public useNamespaces()Z
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/validation/ValidationState;->fNamespaces:Z

    return v0
.end method
