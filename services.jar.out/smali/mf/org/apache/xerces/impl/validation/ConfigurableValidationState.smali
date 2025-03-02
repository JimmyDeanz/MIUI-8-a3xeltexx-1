.class public final Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;
.super Lmf/org/apache/xerces/impl/validation/ValidationState;
.source "ConfigurableValidationState.java"


# instance fields
.field private fIdIdrefChecking:Z

.field private fUnparsedEntityChecking:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 47
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/validation/ValidationState;-><init>()V

    .line 48
    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;->fIdIdrefChecking:Z

    .line 49
    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;->fUnparsedEntityChecking:Z

    .line 50
    return-void
.end method


# virtual methods
.method public addId(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 111
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;->fIdIdrefChecking:Z

    if-eqz v0, :cond_0

    .line 112
    invoke-super {p0, p1}, Lmf/org/apache/xerces/impl/validation/ValidationState;->addId(Ljava/lang/String;)V

    .line 114
    :cond_0
    return-void
.end method

.method public addIdRef(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 121
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;->fIdIdrefChecking:Z

    if-eqz v0, :cond_0

    .line 122
    invoke-super {p0, p1}, Lmf/org/apache/xerces/impl/validation/ValidationState;->addIdRef(Ljava/lang/String;)V

    .line 124
    :cond_0
    return-void
.end method

.method public checkIDRefID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;->fIdIdrefChecking:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Lmf/org/apache/xerces/impl/validation/ValidationState;->checkIDRefID()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEntityDeclared(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 94
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;->fUnparsedEntityChecking:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lmf/org/apache/xerces/impl/validation/ValidationState;->isEntityDeclared(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isEntityUnparsed(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 103
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;->fUnparsedEntityChecking:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lmf/org/apache/xerces/impl/validation/ValidationState;->isEntityUnparsed(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isIdDeclared(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 85
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;->fIdIdrefChecking:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lmf/org/apache/xerces/impl/validation/ValidationState;->isIdDeclared(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIdIdrefChecking(Z)V
    .locals 0
    .param p1, "setting"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;->fIdIdrefChecking:Z

    .line 59
    return-void
.end method

.method public setUnparsedEntityChecking(Z)V
    .locals 0
    .param p1, "setting"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;->fUnparsedEntityChecking:Z

    .line 68
    return-void
.end method
