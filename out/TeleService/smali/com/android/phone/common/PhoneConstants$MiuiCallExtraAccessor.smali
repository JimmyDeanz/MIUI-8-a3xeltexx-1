.class public Lcom/android/phone/common/PhoneConstants$MiuiCallExtraAccessor;
.super Ljava/lang/Object;
.source "PhoneConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/common/PhoneConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MiuiCallExtraAccessor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/common/PhoneConstants$MiuiCallExtraAccessor$ExtraContainer;
    }
.end annotation


# instance fields
.field private mBundle:Landroid/os/Bundle;

.field private final mCall:Lcom/android/phone/common/PhoneConstants$MiuiCallExtraAccessor$ExtraContainer;


# direct methods
.method public constructor <init>(Lcom/android/phone/common/PhoneConstants$MiuiCallExtraAccessor$ExtraContainer;)V
    .locals 2
    .param p1, "call"    # Lcom/android/phone/common/PhoneConstants$MiuiCallExtraAccessor$ExtraContainer;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/android/phone/common/PhoneConstants$MiuiCallExtraAccessor;->mCall:Lcom/android/phone/common/PhoneConstants$MiuiCallExtraAccessor$ExtraContainer;

    .line 79
    invoke-interface {p1}, Lcom/android/phone/common/PhoneConstants$MiuiCallExtraAccessor$ExtraContainer;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 80
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 81
    const-string v1, "com.miui.phone.CALL_EXTRAS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/common/PhoneConstants$MiuiCallExtraAccessor;->mBundle:Landroid/os/Bundle;

    .line 83
    :cond_0
    return-void
.end method


# virtual methods
.method public commit()V
    .locals 4

    .prologue
    .line 153
    iget-object v2, p0, Lcom/android/phone/common/PhoneConstants$MiuiCallExtraAccessor;->mCall:Lcom/android/phone/common/PhoneConstants$MiuiCallExtraAccessor$ExtraContainer;

    invoke-interface {v2}, Lcom/android/phone/common/PhoneConstants$MiuiCallExtraAccessor$ExtraContainer;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 154
    .local v1, "extras":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/android/phone/common/PhoneConstants$MiuiCallExtraAccessor;->mBundle:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/common/PhoneConstants$MiuiCallExtraAccessor;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v2}, Landroid/os/Bundle;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 155
    :cond_0
    if-eqz v1, :cond_1

    .line 156
    const-string v2, "com.miui.phone.CALL_EXTRAS"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 172
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/phone/common/PhoneConstants$MiuiCallExtraAccessor;->mCall:Lcom/android/phone/common/PhoneConstants$MiuiCallExtraAccessor$ExtraContainer;

    invoke-interface {v2, v1}, Lcom/android/phone/common/PhoneConstants$MiuiCallExtraAccessor$ExtraContainer;->setExtras(Landroid/os/Bundle;)V

    .line 173
    return-void

    .line 159
    :cond_2
    if-nez v1, :cond_3

    .line 160
    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "extras":Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 161
    .restart local v1    # "extras":Landroid/os/Bundle;
    const-string v2, "com.miui.phone.CALL_EXTRAS"

    iget-object v3, p0, Lcom/android/phone/common/PhoneConstants$MiuiCallExtraAccessor;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 163
    :cond_3
    const-string v2, "com.miui.phone.CALL_EXTRAS"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 164
    .local v0, "e":Landroid/os/Bundle;
    if-nez v0, :cond_4

    .line 165
    const-string v2, "com.miui.phone.CALL_EXTRAS"

    iget-object v3, p0, Lcom/android/phone/common/PhoneConstants$MiuiCallExtraAccessor;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 166
    :cond_4
    iget-object v2, p0, Lcom/android/phone/common/PhoneConstants$MiuiCallExtraAccessor;->mBundle:Landroid/os/Bundle;

    if-eq v0, v2, :cond_1

    .line 167
    iget-object v2, p0, Lcom/android/phone/common/PhoneConstants$MiuiCallExtraAccessor;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public putBoolean(Ljava/lang/String;Z)Lcom/android/phone/common/PhoneConstants$MiuiCallExtraAccessor;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/phone/common/PhoneConstants$MiuiCallExtraAccessor;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/phone/common/PhoneConstants$MiuiCallExtraAccessor;->mBundle:Landroid/os/Bundle;

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/android/phone/common/PhoneConstants$MiuiCallExtraAccessor;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 118
    return-object p0
.end method
