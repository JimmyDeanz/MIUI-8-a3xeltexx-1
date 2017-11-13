.class Lcom/android/phone/settings/MultiSimInfoEditorActivity$3;
.super Ljava/lang/Object;
.source "MultiSimInfoEditorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/settings/MultiSimInfoEditorActivity;->displayErrorDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/settings/MultiSimInfoEditorActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/settings/MultiSimInfoEditorActivity;)V
    .locals 0

    .prologue
    .line 328
    iput-object p1, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity$3;->this$0:Lcom/android/phone/settings/MultiSimInfoEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity$3;->this$0:Lcom/android/phone/settings/MultiSimInfoEditorActivity;

    # invokes: Lcom/android/phone/settings/MultiSimInfoEditorActivity;->updateCheckState()V
    invoke-static {v0}, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->access$300(Lcom/android/phone/settings/MultiSimInfoEditorActivity;)V

    .line 331
    return-void
.end method
