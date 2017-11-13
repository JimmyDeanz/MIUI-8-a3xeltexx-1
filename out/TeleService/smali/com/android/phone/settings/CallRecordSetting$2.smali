.class Lcom/android/phone/settings/CallRecordSetting$2;
.super Lcom/android/phone/UIDataLoadTask;
.source "CallRecordSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/settings/CallRecordSetting;->updateCustomCategory(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/phone/UIDataLoadTask",
        "<",
        "Lcom/android/phone/settings/CallRecordSetting;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/settings/CallRecordSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/settings/CallRecordSetting;Lcom/android/phone/settings/CallRecordSetting;)V
    .locals 0
    .param p2, "x0"    # Lcom/android/phone/settings/CallRecordSetting;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/phone/settings/CallRecordSetting$2;->this$0:Lcom/android/phone/settings/CallRecordSetting;

    invoke-direct {p0, p2}, Lcom/android/phone/UIDataLoadTask;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected doPrepare()V
    .locals 0

    .prologue
    .line 166
    return-void
.end method

.method protected doTask([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 170
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/settings/AutoRecordWhiteListSetting;->getSummary(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected doUI(Ljava/lang/Object;)V
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/android/phone/settings/CallRecordSetting$2;->getReferenceObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/settings/CallRecordSetting;

    .line 176
    .local v0, "callRecordSetting":Lcom/android/phone/settings/CallRecordSetting;
    # getter for: Lcom/android/phone/settings/CallRecordSetting;->mWhitelist:Lmiui/preference/ValuePreference;
    invoke-static {v0}, Lcom/android/phone/settings/CallRecordSetting;->access$100(Lcom/android/phone/settings/CallRecordSetting;)Lmiui/preference/ValuePreference;

    move-result-object v1

    check-cast p1, Ljava/lang/String;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {v1, p1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 177
    return-void
.end method
