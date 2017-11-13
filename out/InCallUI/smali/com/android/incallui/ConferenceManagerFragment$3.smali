.class Lcom/android/incallui/ConferenceManagerFragment$3;
.super Ljava/lang/Object;
.source "ConferenceManagerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/ConferenceManagerFragment;->setupEndButtonForRow(ILjava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/ConferenceManagerFragment;

.field final synthetic val$callId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/incallui/ConferenceManagerFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/incallui/ConferenceManagerFragment$3;->this$0:Lcom/android/incallui/ConferenceManagerFragment;

    iput-object p2, p0, Lcom/android/incallui/ConferenceManagerFragment$3;->val$callId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/incallui/ConferenceManagerFragment$3;->this$0:Lcom/android/incallui/ConferenceManagerFragment;

    invoke-virtual {v0}, Lcom/android/incallui/ConferenceManagerFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/ConferenceManagerPresenter;

    iget-object v1, p0, Lcom/android/incallui/ConferenceManagerFragment$3;->val$callId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/incallui/ConferenceManagerPresenter;->endConferenceConnection(Ljava/lang/String;)V

    .line 204
    return-void
.end method
