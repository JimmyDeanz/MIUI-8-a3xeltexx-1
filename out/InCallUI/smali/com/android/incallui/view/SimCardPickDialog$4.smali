.class Lcom/android/incallui/view/SimCardPickDialog$4;
.super Ljava/lang/Object;
.source "SimCardPickDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 118
    iput-object p1, p0, Lcom/android/incallui/view/SimCardPickDialog$4;->this$0:Lcom/android/incallui/view/SimCardPickDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/incallui/view/SimCardPickDialog$4;->this$0:Lcom/android/incallui/view/SimCardPickDialog;

    invoke-virtual {v0}, Lcom/android/incallui/view/SimCardPickDialog;->cancelDialog()V

    .line 122
    return-void
.end method
