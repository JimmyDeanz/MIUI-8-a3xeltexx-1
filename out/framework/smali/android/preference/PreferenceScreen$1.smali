.class Landroid/preference/PreferenceScreen$1;
.super Landroid/content/BroadcastReceiver;
.source "PreferenceScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/preference/PreferenceScreen;->bind(Landroid/widget/ListView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/preference/PreferenceScreen;


# direct methods
.method constructor <init>(Landroid/preference/PreferenceScreen;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Landroid/preference/PreferenceScreen$1;->this$0:Landroid/preference/PreferenceScreen;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 194
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.samsung.settings.FONT_SIZE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    iget-object v1, p0, Landroid/preference/PreferenceScreen$1;->this$0:Landroid/preference/PreferenceScreen;

    # invokes: Landroid/preference/PreferenceScreen;->setTitleFontSize()V
    invoke-static {v1}, Landroid/preference/PreferenceScreen;->access$100(Landroid/preference/PreferenceScreen;)V

    .line 197
    iget-object v1, p0, Landroid/preference/PreferenceScreen$1;->this$0:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->notifyHierarchyChanged()V

    .line 199
    :cond_0
    return-void
.end method
