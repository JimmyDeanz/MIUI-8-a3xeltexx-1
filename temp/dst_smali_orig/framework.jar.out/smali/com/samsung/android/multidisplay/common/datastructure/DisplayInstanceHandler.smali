.class public Lcom/samsung/android/multidisplay/common/datastructure/DisplayInstanceHandler;
.super Lcom/samsung/android/multidisplay/common/datastructure/ContextRelatedInstanceHandler;
.source "DisplayInstanceHandler.java"


# static fields
.field private static final mDisplayWrapperList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/multidisplay/common/datastructure/DisplayInstanceWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/multidisplay/common/datastructure/DisplayInstanceHandler;->mDisplayWrapperList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    sget-object v0, Lcom/samsung/android/multidisplay/common/datastructure/DisplayInstanceHandler;->mDisplayWrapperList:Ljava/util/ArrayList;

    const-string v1, "DisplayInstanceWrapper"

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/multidisplay/common/datastructure/ContextRelatedInstanceHandler;-><init>(Ljava/util/ArrayList;Ljava/lang/String;)V

    const-string v0, "DisplayInstanceHandler"

    iput-object v0, p0, Lcom/samsung/android/multidisplay/common/datastructure/DisplayInstanceHandler;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public createContextRelatedInstance(Landroid/content/Context;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "creator"    # Landroid/content/Context;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    sget-boolean v2, Lcom/samsung/android/multidisplay/common/datastructure/DisplayInstanceHandler;->DEBUG:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/multidisplay/common/datastructure/DisplayInstanceHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createContextRelatedInstance() : context="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getOuterContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p2, :cond_1

    instance-of v2, p2, Landroid/view/Display;

    if-nez v2, :cond_2

    :cond_1
    const/4 v2, 0x0

    .end local p2    # "object":Ljava/lang/Object;
    :goto_0
    return v2

    .restart local p2    # "object":Ljava/lang/Object;
    :cond_2
    invoke-virtual {p0, p1}, Lcom/samsung/android/multidisplay/common/datastructure/DisplayInstanceHandler;->findContextRelatedInstance(Landroid/content/Context;)Lcom/samsung/android/multidisplay/common/datastructure/ContextRelatedInstance;

    move-result-object v1

    .local v1, "relatedInstance":Lcom/samsung/android/multidisplay/common/datastructure/ContextRelatedInstance;
    if-eqz v1, :cond_4

    instance-of v2, v1, Lcom/samsung/android/multidisplay/common/datastructure/DisplayInstanceWrapper;

    if-eqz v2, :cond_4

    sget-boolean v2, Lcom/samsung/android/multidisplay/common/datastructure/DisplayInstanceHandler;->DEBUG:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/multidisplay/common/datastructure/DisplayInstanceHandler;->TAG:Ljava/lang/String;

    const-string v3, "createContextRelatedInstance() : instance already exist for creator!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object v0, v1

    check-cast v0, Lcom/samsung/android/multidisplay/common/datastructure/DisplayInstanceWrapper;

    .local v0, "creatorDisplayInstanceWrapper":Lcom/samsung/android/multidisplay/common/datastructure/DisplayInstanceWrapper;
    :goto_1
    check-cast p2, Landroid/view/Display;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-virtual {v0, p2}, Lcom/samsung/android/multidisplay/common/datastructure/DisplayInstanceWrapper;->addDisplayRef(Landroid/view/Display;)V

    invoke-virtual {p0}, Lcom/samsung/android/multidisplay/common/datastructure/DisplayInstanceHandler;->garbageCollect()V

    const/4 v2, 0x1

    goto :goto_0

    .end local v0    # "creatorDisplayInstanceWrapper":Lcom/samsung/android/multidisplay/common/datastructure/DisplayInstanceWrapper;
    .restart local p2    # "object":Ljava/lang/Object;
    :cond_4
    new-instance v0, Lcom/samsung/android/multidisplay/common/datastructure/DisplayInstanceWrapper;

    invoke-direct {v0, p1}, Lcom/samsung/android/multidisplay/common/datastructure/DisplayInstanceWrapper;-><init>(Landroid/content/Context;)V

    .restart local v0    # "creatorDisplayInstanceWrapper":Lcom/samsung/android/multidisplay/common/datastructure/DisplayInstanceWrapper;
    sget-object v2, Lcom/samsung/android/multidisplay/common/datastructure/DisplayInstanceHandler;->mDisplayWrapperList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;ZZ)V
    .locals 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpDetail"    # Z
    .param p4, "dumpCallStack"    # Z

    .prologue
    sget-boolean v4, Lcom/samsung/android/multidisplay/common/datastructure/DisplayInstanceHandler;->DEBUG:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/multidisplay/common/datastructure/DisplayInstanceHandler;->TAG:Ljava/lang/String;

    const-string v5, "dump()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, "innerPrefix":Ljava/lang/String;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "Display instance handler : "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-class v5, Lcom/samsung/android/multidisplay/common/datastructure/DisplayInstanceWrapper;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v4, Lcom/samsung/android/multidisplay/common/datastructure/DisplayInstanceHandler;->mDisplayWrapperList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(I)V

    sget-object v4, Lcom/samsung/android/multidisplay/common/datastructure/DisplayInstanceHandler;->mDisplayWrapperList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_5

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "display wrappers = {"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v4, Lcom/samsung/android/multidisplay/common/datastructure/DisplayInstanceHandler;->mDisplayWrapperList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/multidisplay/common/datastructure/ContextRelatedInstance;

    .local v3, "relatedInstance":Lcom/samsung/android/multidisplay/common/datastructure/ContextRelatedInstance;
    instance-of v4, v3, Lcom/samsung/android/multidisplay/common/datastructure/DisplayInstanceWrapper;

    if-eqz v4, :cond_1

    move-object v0, v3

    check-cast v0, Lcom/samsung/android/multidisplay/common/datastructure/DisplayInstanceWrapper;

    .local v0, "displayWrapper":Lcom/samsung/android/multidisplay/common/datastructure/DisplayInstanceWrapper;
    sget-boolean v4, Lcom/samsung/android/multidisplay/common/datastructure/DisplayInstanceHandler;->DEBUG:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/multidisplay/common/datastructure/DisplayInstanceHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dump() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz p3, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, p1, v4, p4}, Lcom/samsung/android/multidisplay/common/datastructure/DisplayInstanceWrapper;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_0

    .end local v0    # "displayWrapper":Lcom/samsung/android/multidisplay/common/datastructure/DisplayInstanceWrapper;
    .end local v3    # "relatedInstance":Lcom/samsung/android/multidisplay/common/datastructure/ContextRelatedInstance;
    :cond_4
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "}"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_5
    return-void
.end method
