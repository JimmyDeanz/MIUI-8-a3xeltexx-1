.class Lcom/android/phone/settings/EditFdnContactScreen$3;
.super Ljava/lang/Object;
.source "EditFdnContactScreen.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/settings/EditFdnContactScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/settings/EditFdnContactScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/settings/EditFdnContactScreen;)V
    .locals 0

    .prologue
    .line 369
    iput-object p1, p0, Lcom/android/phone/settings/EditFdnContactScreen$3;->this$0:Lcom/android/phone/settings/EditFdnContactScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 371
    if-eqz p2, :cond_0

    move-object v0, p1

    .line 372
    check-cast v0, Landroid/widget/TextView;

    .line 373
    .local v0, "textView":Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    invoke-static {v1}, Landroid/text/Selection;->selectAll(Landroid/text/Spannable;)V

    .line 375
    .end local v0    # "textView":Landroid/widget/TextView;
    :cond_0
    return-void
.end method
