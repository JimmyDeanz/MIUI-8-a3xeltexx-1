.class Lcom/samsung/android/server/iris/IrisService$3;
.super Ljava/lang/Object;
.source "IrisService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/iris/IrisService;
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
    .line 268
    iput-object p1, p0, Lcom/samsung/android/server/iris/IrisService$3;->this$0:Lcom/samsung/android/server/iris/IrisService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService$3;->this$0:Lcom/samsung/android/server/iris/IrisService;

    # invokes: Lcom/samsung/android/server/iris/IrisService;->resetFailedAttempts()V
    invoke-static {v0}, Lcom/samsung/android/server/iris/IrisService;->access$300(Lcom/samsung/android/server/iris/IrisService;)V

    .line 272
    return-void
.end method
