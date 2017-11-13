.class Lcom/android/incallui/ConferenceManagerFragment$2;
.super Ljava/lang/Object;
.source "ConferenceManagerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/ConferenceManagerFragment;->initConferenceView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/ConferenceManagerFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/ConferenceManagerFragment;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/incallui/ConferenceManagerFragment$2;->this$0:Lcom/android/incallui/ConferenceManagerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 121
    iget-object v0, p0, Lcom/android/incallui/ConferenceManagerFragment$2;->this$0:Lcom/android/incallui/ConferenceManagerFragment;

    invoke-virtual {v0}, Lcom/android/incallui/ConferenceManagerFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/ConferenceManagerPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/ConferenceManagerPresenter;->onAddParticipantClicked()V

    .line 122
    iget-object v0, p0, Lcom/android/incallui/ConferenceManagerFragment$2;->this$0:Lcom/android/incallui/ConferenceManagerFragment;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "video_call_conference_add_participant"

    aput-object v2, v1, v3

    # invokes: Lcom/android/incallui/ConferenceManagerFragment;->videoCallStateRecord(ZZ[Ljava/lang/String;)V
    invoke-static {v0, v3, v3, v1}, Lcom/android/incallui/ConferenceManagerFragment;->access$000(Lcom/android/incallui/ConferenceManagerFragment;ZZ[Ljava/lang/String;)V

    .line 124
    return-void
.end method
