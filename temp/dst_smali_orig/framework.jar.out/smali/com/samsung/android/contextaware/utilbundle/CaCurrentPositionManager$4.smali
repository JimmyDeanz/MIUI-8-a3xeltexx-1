.class Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager$4;
.super Ljava/lang/Object;
.source "CaCurrentPositionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->enable(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager$4;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager$4;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;

    # invokes: Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->registerGpsListener()V
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->access$400(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)V

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager$4;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;

    # invokes: Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->registerWpsListener()V
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->access$500(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)V

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager$4;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;

    const/4 v1, 0x1

    # |= operator for: Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->LocRequestSource:I
    invoke-static {v0, v1}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->access$676(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;I)I

    return-void
.end method
