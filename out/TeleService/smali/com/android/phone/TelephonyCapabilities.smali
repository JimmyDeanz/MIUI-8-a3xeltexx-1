.class public Lcom/android/phone/TelephonyCapabilities;
.super Ljava/lang/Object;
.source "TelephonyCapabilities.java"


# direct methods
.method public static isSmscAddressEncoded(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static supportShowPLMNPreference()Z
    .locals 1

    .prologue
    .line 43
    sget-boolean v0, Lmiui/os/Build;->IS_CTA_BUILD:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI_TWOX_CT:Z

    if-eqz v0, :cond_1

    :cond_0
    sget-boolean v0, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportsCallRecording(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method
