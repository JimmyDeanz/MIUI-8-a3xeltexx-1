.class public Lmf/org/apache/xerces/impl/xs/identity/UniqueOrKey;
.super Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;
.source "UniqueOrKey.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;S)V
    .locals 0
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "identityConstraintName"    # Ljava/lang/String;
    .param p3, "elemName"    # Ljava/lang/String;
    .param p4, "type"    # S

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-short p4, p0, Lmf/org/apache/xerces/impl/xs/identity/UniqueOrKey;->type:S

    return-void
.end method
