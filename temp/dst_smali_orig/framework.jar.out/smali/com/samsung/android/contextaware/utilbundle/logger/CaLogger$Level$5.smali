.class final enum Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level$5;
.super Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;
.source "CaLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;-><init>(Ljava/lang/String;ILcom/samsung/android/contextaware/utilbundle/logger/CaLogger$1;)V

    return-void
.end method


# virtual methods
.method consoleLogging(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    # getter for: Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->isConsoleLogging:Z
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->access$100()Z

    move-result v3

    if-eqz v3, :cond_1

    # getter for: Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->mLevel:I
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->access$200()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level$5;->ordinal()I

    move-result v4

    if-gt v3, v4, :cond_1

    move v1, v2

    .local v1, "usable":Z
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    # invokes: Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->getCallerInfo(Z)Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->access$300(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "str":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "CAE"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0

    .end local v0    # "str":Ljava/lang/String;
    .end local v1    # "usable":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method fileLogging(Ljava/lang/String;)V
    .locals 6
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    # getter for: Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->isFileLogging:Z
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->access$400()Z

    move-result v2

    if-eqz v2, :cond_1

    # getter for: Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->mLevel:I
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->access$200()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level$5;->ordinal()I

    move-result v3

    if-gt v2, v3, :cond_1

    move v0, v1

    .local v0, "usable":Z
    :goto_0
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->getInstance()Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;

    move-result-object v2

    const-string v3, "CAELogger"

    const-string v4, "E"

    const-string v5, "CAE"

    # invokes: Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->getCallerInfo(Z)Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->access$300(Z)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->getFilePattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v4, v5, v1, p1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->access$500(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->logging(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    .end local v0    # "usable":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
