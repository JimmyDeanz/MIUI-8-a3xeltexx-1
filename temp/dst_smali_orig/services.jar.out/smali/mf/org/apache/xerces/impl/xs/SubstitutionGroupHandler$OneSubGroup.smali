.class final Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler$OneSubGroup;
.super Ljava/lang/Object;
.source "SubstitutionGroupHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OneSubGroup"
.end annotation


# instance fields
.field bMethod:S

.field dMethod:S

.field sub:Lmf/org/apache/xerces/impl/xs/XSElementDecl;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lmf/org/apache/xerces/impl/xs/XSElementDecl;SS)V
    .locals 0
    .param p1, "sub"    # Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    .param p2, "dMethod"    # S
    .param p3, "bMethod"    # S

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler$OneSubGroup;->sub:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iput-short p2, p0, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler$OneSubGroup;->dMethod:S

    iput-short p3, p0, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler$OneSubGroup;->bMethod:S

    return-void
.end method
