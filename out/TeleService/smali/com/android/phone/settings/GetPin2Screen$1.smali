.class Lcom/android/phone/settings/GetPin2Screen$1;
.super Ljava/lang/Object;
.source "GetPin2Screen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/settings/GetPin2Screen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/settings/GetPin2Screen;


# direct methods
.method constructor <init>(Lcom/android/phone/settings/GetPin2Screen;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/phone/settings/GetPin2Screen$1;->this$0:Lcom/android/phone/settings/GetPin2Screen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/phone/settings/GetPin2Screen$1;->this$0:Lcom/android/phone/settings/GetPin2Screen;

    # getter for: Lcom/android/phone/settings/GetPin2Screen;->mPin2Field:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/phone/settings/GetPin2Screen;->access$000(Lcom/android/phone/settings/GetPin2Screen;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/android/phone/settings/GetPin2Screen$1;->this$0:Lcom/android/phone/settings/GetPin2Screen;

    # invokes: Lcom/android/phone/settings/GetPin2Screen;->returnResult()V
    invoke-static {v0}, Lcom/android/phone/settings/GetPin2Screen;->access$100(Lcom/android/phone/settings/GetPin2Screen;)V

    goto :goto_0
.end method
