.class public Lmf/org/apache/xerces/impl/xpath/XPath$Step;
.super Ljava/lang/Object;
.source "XPath.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/xpath/XPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Step"
.end annotation


# instance fields
.field public final axis:Lmf/org/apache/xerces/impl/xpath/XPath$Axis;

.field public final nodeTest:Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/impl/xpath/XPath$Axis;Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;)V
    .locals 0
    .param p1, "axis"    # Lmf/org/apache/xerces/impl/xpath/XPath$Axis;
    .param p2, "nodeTest"    # Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;

    .prologue
    .line 455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 456
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Step;->axis:Lmf/org/apache/xerces/impl/xpath/XPath$Axis;

    .line 457
    iput-object p2, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Step;->nodeTest:Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;

    .line 458
    return-void
.end method

.method protected constructor <init>(Lmf/org/apache/xerces/impl/xpath/XPath$Step;)V
    .locals 1
    .param p1, "step"    # Lmf/org/apache/xerces/impl/xpath/XPath$Step;

    .prologue
    .line 461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 462
    iget-object v0, p1, Lmf/org/apache/xerces/impl/xpath/XPath$Step;->axis:Lmf/org/apache/xerces/impl/xpath/XPath$Axis;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xpath/XPath$Axis;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xpath/XPath$Axis;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Step;->axis:Lmf/org/apache/xerces/impl/xpath/XPath$Axis;

    .line 463
    iget-object v0, p1, Lmf/org/apache/xerces/impl/xpath/XPath$Step;->nodeTest:Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Step;->nodeTest:Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;

    .line 464
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 489
    new-instance v0, Lmf/org/apache/xerces/impl/xpath/XPath$Step;

    invoke-direct {v0, p0}, Lmf/org/apache/xerces/impl/xpath/XPath$Step;-><init>(Lmf/org/apache/xerces/impl/xpath/XPath$Step;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 472
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Step;->axis:Lmf/org/apache/xerces/impl/xpath/XPath$Axis;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/xpath/XPath$Axis;->type:S

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 473
    const-string v0, "."

    .line 484
    :goto_0
    return-object v0

    .line 475
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Step;->axis:Lmf/org/apache/xerces/impl/xpath/XPath$Axis;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/xpath/XPath$Axis;->type:S

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Step;->nodeTest:Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 478
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Step;->axis:Lmf/org/apache/xerces/impl/xpath/XPath$Axis;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/xpath/XPath$Axis;->type:S

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 479
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Step;->nodeTest:Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 481
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Step;->axis:Lmf/org/apache/xerces/impl/xpath/XPath$Axis;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/xpath/XPath$Axis;->type:S

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 482
    const-string v0, "//"

    goto :goto_0

    .line 484
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "??? ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Step;->axis:Lmf/org/apache/xerces/impl/xpath/XPath$Axis;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/xpath/XPath$Axis;->type:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
