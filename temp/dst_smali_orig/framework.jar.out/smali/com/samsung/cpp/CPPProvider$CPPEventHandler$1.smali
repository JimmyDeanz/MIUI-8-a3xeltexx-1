.class Lcom/samsung/cpp/CPPProvider$CPPEventHandler$1;
.super Ljava/lang/Object;
.source "CPPProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/cpp/CPPProvider$CPPEventHandler;

.field final synthetic val$_rat:I

.field final synthetic val$requestedId:J

.field final synthetic val$resultMsg:[B


# direct methods
.method constructor <init>(Lcom/samsung/cpp/CPPProvider$CPPEventHandler;[BJI)V
    .locals 1

    .prologue
    iput-object p1, p0, Lcom/samsung/cpp/CPPProvider$CPPEventHandler$1;->this$1:Lcom/samsung/cpp/CPPProvider$CPPEventHandler;

    iput-object p2, p0, Lcom/samsung/cpp/CPPProvider$CPPEventHandler$1;->val$resultMsg:[B

    iput-wide p3, p0, Lcom/samsung/cpp/CPPProvider$CPPEventHandler$1;->val$requestedId:J

    iput p5, p0, Lcom/samsung/cpp/CPPProvider$CPPEventHandler$1;->val$_rat:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    iget-object v0, p0, Lcom/samsung/cpp/CPPProvider$CPPEventHandler$1;->this$1:Lcom/samsung/cpp/CPPProvider$CPPEventHandler;

    iget-object v0, v0, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->this$0:Lcom/samsung/cpp/CPPProvider;

    iget-object v1, p0, Lcom/samsung/cpp/CPPProvider$CPPEventHandler$1;->val$resultMsg:[B

    iget-wide v2, p0, Lcom/samsung/cpp/CPPProvider$CPPEventHandler$1;->val$requestedId:J

    iget v4, p0, Lcom/samsung/cpp/CPPProvider$CPPEventHandler$1;->val$_rat:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/cpp/CPPProvider;->sendRespToCpDirect([BJI)V

    return-void
.end method
