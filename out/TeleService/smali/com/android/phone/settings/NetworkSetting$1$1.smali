.class Lcom/android/phone/settings/NetworkSetting$1$1;
.super Ljava/lang/Object;
.source "NetworkSetting.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/settings/NetworkSetting$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/settings/NetworkSetting$1;


# direct methods
.method constructor <init>(Lcom/android/phone/settings/NetworkSetting$1;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/android/phone/settings/NetworkSetting$1$1;->this$1:Lcom/android/phone/settings/NetworkSetting$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/phone/settings/NetworkSetting$1$1;->this$1:Lcom/android/phone/settings/NetworkSetting$1;

    iget-object v0, v0, Lcom/android/phone/settings/NetworkSetting$1;->this$0:Lcom/android/phone/settings/NetworkSetting;

    # getter for: Lcom/android/phone/settings/NetworkSetting;->mAutoSelect:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/phone/settings/NetworkSetting;->access$800(Lcom/android/phone/settings/NetworkSetting;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/settings/NetworkSetting$1$1;->this$1:Lcom/android/phone/settings/NetworkSetting$1;

    iget-object v1, v1, Lcom/android/phone/settings/NetworkSetting$1;->this$0:Lcom/android/phone/settings/NetworkSetting;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/phone/settings/NetworkSetting;->getAutoSelectionSummary(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 206
    return-void
.end method
