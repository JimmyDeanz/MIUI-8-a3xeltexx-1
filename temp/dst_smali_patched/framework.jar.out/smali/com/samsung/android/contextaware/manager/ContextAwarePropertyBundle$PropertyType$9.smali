.class final enum Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType$9;
.super Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;
.source "ContextAwarePropertyBundle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;
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

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;-><init>(Ljava/lang/String;ILcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$1;)V

    return-void
.end method


# virtual methods
.method getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()TE;"
        }
    .end annotation

    .prologue
    # getter for: Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->longArrayVal:[J
    invoke-static {}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->access$900()[J

    move-result-object v0

    return-object v0
.end method

.method setValue(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .local p1, "value":Ljava/lang/Object;, "TT;"
    instance-of v0, p1, [J

    if-eqz v0, :cond_0

    check-cast p1, [J

    .end local p1    # "value":Ljava/lang/Object;, "TT;"
    check-cast p1, [J

    # setter for: Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->longArrayVal:[J
    invoke-static {p1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->access$902([J)[J

    :cond_0
    return-void
.end method
