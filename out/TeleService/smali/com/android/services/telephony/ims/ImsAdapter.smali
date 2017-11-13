.class public Lcom/android/services/telephony/ims/ImsAdapter;
.super Ljava/lang/Object;
.source "ImsAdapter.java"


# direct methods
.method public static setEnhanced4gLteModeSetting(Landroid/content/Context;Z)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    .prologue
    .line 13
    invoke-static {p0, p1}, Lcom/android/ims/ImsManager;->setEnhanced4gLteModeSetting(Landroid/content/Context;Z)V

    .line 14
    return-void
.end method
