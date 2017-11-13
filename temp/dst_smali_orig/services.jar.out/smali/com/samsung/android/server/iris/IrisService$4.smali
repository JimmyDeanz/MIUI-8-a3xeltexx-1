.class Lcom/samsung/android/server/iris/IrisService$4;
.super Ljava/lang/Object;
.source "IrisService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/iris/IrisService;->handleError(JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/iris/IrisService;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/iris/IrisService;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/samsung/android/server/iris/IrisService$4;->this$0:Lcom/samsung/android/server/iris/IrisService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService$4;->this$0:Lcom/samsung/android/server/iris/IrisService;

    # invokes: Lcom/samsung/android/server/iris/IrisService;->checkIntegrity()V
    invoke-static {v0}, Lcom/samsung/android/server/iris/IrisService;->access$600(Lcom/samsung/android/server/iris/IrisService;)V

    return-void
.end method
