.class Landroid/widget/ScrollView$2;
.super Ljava/lang/Object;
.source "ScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ScrollView;


# direct methods
.method constructor <init>(Landroid/widget/ScrollView;)V
    .locals 0

    .prologue
    .line 3013
    iput-object p1, p0, Landroid/widget/ScrollView$2;->this$0:Landroid/widget/ScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 3015
    iget-object v0, p0, Landroid/widget/ScrollView$2;->this$0:Landroid/widget/ScrollView;

    # invokes: Landroid/widget/ScrollView;->playQCBtnFadeOut()V
    invoke-static {v0}, Landroid/widget/ScrollView;->access$200(Landroid/widget/ScrollView;)V

    .line 3016
    return-void
.end method
