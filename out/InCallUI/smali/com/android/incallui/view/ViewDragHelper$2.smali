.class Lcom/android/incallui/view/ViewDragHelper$2;
.super Ljava/lang/Object;
.source "ViewDragHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/view/ViewDragHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/view/ViewDragHelper;


# direct methods
.method constructor <init>(Lcom/android/incallui/view/ViewDragHelper;)V
    .locals 0

    .prologue
    .line 323
    iput-object p1, p0, Lcom/android/incallui/view/ViewDragHelper$2;->this$0:Lcom/android/incallui/view/ViewDragHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/incallui/view/ViewDragHelper$2;->this$0:Lcom/android/incallui/view/ViewDragHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/view/ViewDragHelper;->setDragState(I)V

    .line 326
    return-void
.end method
