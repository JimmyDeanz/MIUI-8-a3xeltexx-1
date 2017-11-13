.class Lcom/android/incallui/view/SlideUpLayout$3;
.super Ljava/lang/Object;
.source "SlideUpLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/view/SlideUpLayout;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/view/SlideUpLayout;


# direct methods
.method constructor <init>(Lcom/android/incallui/view/SlideUpLayout;)V
    .locals 0

    .prologue
    .line 375
    iput-object p1, p0, Lcom/android/incallui/view/SlideUpLayout$3;->this$0:Lcom/android/incallui/view/SlideUpLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/android/incallui/view/SlideUpLayout$3;->this$0:Lcom/android/incallui/view/SlideUpLayout;

    # invokes: Lcom/android/incallui/view/SlideUpLayout;->dismissMessageResponse()V
    invoke-static {v0}, Lcom/android/incallui/view/SlideUpLayout;->access$000(Lcom/android/incallui/view/SlideUpLayout;)V

    .line 379
    return-void
.end method
