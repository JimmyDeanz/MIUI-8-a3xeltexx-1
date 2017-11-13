.class Lcom/samsung/android/server/iris/IrisService$6$5;
.super Ljava/lang/Object;
.source "IrisService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/iris/IrisService$6;->onRemoved(JII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/server/iris/IrisService$6;

.field final synthetic val$deviceId:J

.field final synthetic val$groupId:I

.field final synthetic val$irisId:I


# direct methods
.method constructor <init>(Lcom/samsung/android/server/iris/IrisService$6;JII)V
    .locals 0

    .prologue
    .line 1569
    iput-object p1, p0, Lcom/samsung/android/server/iris/IrisService$6$5;->this$1:Lcom/samsung/android/server/iris/IrisService$6;

    iput-wide p2, p0, Lcom/samsung/android/server/iris/IrisService$6$5;->val$deviceId:J

    iput p4, p0, Lcom/samsung/android/server/iris/IrisService$6$5;->val$irisId:I

    iput p5, p0, Lcom/samsung/android/server/iris/IrisService$6$5;->val$groupId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1572
    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService$6$5;->this$1:Lcom/samsung/android/server/iris/IrisService$6;

    iget-object v0, v0, Lcom/samsung/android/server/iris/IrisService$6;->this$0:Lcom/samsung/android/server/iris/IrisService;

    iget-wide v2, p0, Lcom/samsung/android/server/iris/IrisService$6$5;->val$deviceId:J

    iget v1, p0, Lcom/samsung/android/server/iris/IrisService$6$5;->val$irisId:I

    iget v4, p0, Lcom/samsung/android/server/iris/IrisService$6$5;->val$groupId:I

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/samsung/android/server/iris/IrisService;->handleRemoved(JII)V

    .line 1573
    return-void
.end method
