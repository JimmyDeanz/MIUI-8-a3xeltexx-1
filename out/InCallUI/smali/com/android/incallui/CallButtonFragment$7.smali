.class Lcom/android/incallui/CallButtonFragment$7;
.super Ljava/lang/Object;
.source "CallButtonFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/CallButtonFragment;->showAudioSelectDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/CallButtonFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/CallButtonFragment;)V
    .locals 0

    .prologue
    .line 507
    iput-object p1, p0, Lcom/android/incallui/CallButtonFragment$7;->this$0:Lcom/android/incallui/CallButtonFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 510
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment$7;->this$0:Lcom/android/incallui/CallButtonFragment;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonFragment;->cancelDialog()V

    .line 511
    return-void
.end method
