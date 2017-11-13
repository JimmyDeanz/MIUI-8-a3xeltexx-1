.class Lcom/android/phone/settings/AutoRecordWhiteListSetting$1;
.super Lcom/android/phone/UIDataLoadTask;
.source "AutoRecordWhiteListSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/settings/AutoRecordWhiteListSetting;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/phone/UIDataLoadTask",
        "<",
        "Lcom/android/phone/settings/AutoRecordWhiteListSetting;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/settings/AutoRecordWhiteListSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/settings/AutoRecordWhiteListSetting;Lcom/android/phone/settings/AutoRecordWhiteListSetting;)V
    .locals 0
    .param p2, "x0"    # Lcom/android/phone/settings/AutoRecordWhiteListSetting;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/phone/settings/AutoRecordWhiteListSetting$1;->this$0:Lcom/android/phone/settings/AutoRecordWhiteListSetting;

    invoke-direct {p0, p2}, Lcom/android/phone/UIDataLoadTask;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected doPrepare()V
    .locals 3

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/android/phone/settings/AutoRecordWhiteListSetting$1;->getReferenceObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/settings/AutoRecordWhiteListSetting;

    .line 121
    .local v0, "autoRecordUI":Lcom/android/phone/settings/AutoRecordWhiteListSetting;
    # getter for: Lcom/android/phone/settings/AutoRecordWhiteListSetting;->mSummaryView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/phone/settings/AutoRecordWhiteListSetting;->access$100(Lcom/android/phone/settings/AutoRecordWhiteListSetting;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0802f5

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 122
    return-void
.end method

.method protected doTask([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 126
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    # invokes: Lcom/android/phone/settings/AutoRecordWhiteListSetting;->loadNumbers(Landroid/content/Context;)Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/phone/settings/AutoRecordWhiteListSetting;->access$200(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method protected doUI(Ljava/lang/Object;)V
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/android/phone/settings/AutoRecordWhiteListSetting$1;->getReferenceObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/settings/AutoRecordWhiteListSetting;

    .line 132
    .local v0, "autoRecordUI":Lcom/android/phone/settings/AutoRecordWhiteListSetting;
    check-cast p1, Ljava/util/HashMap;

    .end local p1    # "o":Ljava/lang/Object;
    # setter for: Lcom/android/phone/settings/AutoRecordWhiteListSetting;->mNumbers:Ljava/util/HashMap;
    invoke-static {v0, p1}, Lcom/android/phone/settings/AutoRecordWhiteListSetting;->access$302(Lcom/android/phone/settings/AutoRecordWhiteListSetting;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 133
    # getter for: Lcom/android/phone/settings/AutoRecordWhiteListSetting;->mNumbers:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/phone/settings/AutoRecordWhiteListSetting;->access$300(Lcom/android/phone/settings/AutoRecordWhiteListSetting;)Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_0

    # getter for: Lcom/android/phone/settings/AutoRecordWhiteListSetting;->mNumbers:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/phone/settings/AutoRecordWhiteListSetting;->access$300(Lcom/android/phone/settings/AutoRecordWhiteListSetting;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 134
    :cond_0
    # getter for: Lcom/android/phone/settings/AutoRecordWhiteListSetting;->mSummaryView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/phone/settings/AutoRecordWhiteListSetting;->access$100(Lcom/android/phone/settings/AutoRecordWhiteListSetting;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0802f6

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 136
    :cond_1
    # invokes: Lcom/android/phone/settings/AutoRecordWhiteListSetting;->updateAdapterData()V
    invoke-static {v0}, Lcom/android/phone/settings/AutoRecordWhiteListSetting;->access$400(Lcom/android/phone/settings/AutoRecordWhiteListSetting;)V

    .line 137
    return-void
.end method
