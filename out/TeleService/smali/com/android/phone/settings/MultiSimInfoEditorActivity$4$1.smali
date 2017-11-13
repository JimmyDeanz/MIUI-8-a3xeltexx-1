.class Lcom/android/phone/settings/MultiSimInfoEditorActivity$4$1;
.super Ljava/lang/Object;
.source "MultiSimInfoEditorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/settings/MultiSimInfoEditorActivity$4;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/settings/MultiSimInfoEditorActivity$4;


# direct methods
.method constructor <init>(Lcom/android/phone/settings/MultiSimInfoEditorActivity$4;)V
    .locals 0

    .prologue
    .line 404
    iput-object p1, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity$4$1;->this$1:Lcom/android/phone/settings/MultiSimInfoEditorActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity$4$1;->this$1:Lcom/android/phone/settings/MultiSimInfoEditorActivity$4;

    iget-object v0, v0, Lcom/android/phone/settings/MultiSimInfoEditorActivity$4;->this$0:Lcom/android/phone/settings/MultiSimInfoEditorActivity;

    invoke-virtual {v0}, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->dismissProgressDialog()V

    .line 408
    return-void
.end method
