.class Lcom/samsung/android/server/iris/IrisesUserState$1;
.super Ljava/lang/Object;
.source "IrissUserState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/iris/IrisesUserState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/iris/IrisesUserState;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/iris/IrisesUserState;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/samsung/android/server/iris/IrisesUserState$1;->this$0:Lcom/samsung/android/server/iris/IrisesUserState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisesUserState$1;->this$0:Lcom/samsung/android/server/iris/IrisesUserState;

    # invokes: Lcom/samsung/android/server/iris/IrisesUserState;->doWriteState()V
    invoke-static {v0}, Lcom/samsung/android/server/iris/IrisesUserState;->access$000(Lcom/samsung/android/server/iris/IrisesUserState;)V

    return-void
.end method
