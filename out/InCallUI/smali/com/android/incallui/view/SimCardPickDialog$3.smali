.class Lcom/android/incallui/view/SimCardPickDialog$3;
.super Ljava/lang/Object;
.source "SimCardPickDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/view/SimCardPickDialog;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/view/SimCardPickDialog;


# direct methods
.method constructor <init>(Lcom/android/incallui/view/SimCardPickDialog;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/incallui/view/SimCardPickDialog$3;->this$0:Lcom/android/incallui/view/SimCardPickDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/incallui/view/SimCardPickDialog$3;->this$0:Lcom/android/incallui/view/SimCardPickDialog;

    invoke-virtual {v0}, Lcom/android/incallui/view/SimCardPickDialog;->cancelDialog()V

    .line 116
    return-void
.end method
