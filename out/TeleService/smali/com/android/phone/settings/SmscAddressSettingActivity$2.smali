.class Lcom/android/phone/settings/SmscAddressSettingActivity$2;
.super Ljava/lang/Object;
.source "SmscAddressSettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/settings/SmscAddressSettingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/settings/SmscAddressSettingActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/settings/SmscAddressSettingActivity;)V
    .locals 0

    .prologue
    .line 299
    iput-object p1, p0, Lcom/android/phone/settings/SmscAddressSettingActivity$2;->this$0:Lcom/android/phone/settings/SmscAddressSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/phone/settings/SmscAddressSettingActivity$2;->this$0:Lcom/android/phone/settings/SmscAddressSettingActivity;

    invoke-virtual {v0}, Lcom/android/phone/settings/SmscAddressSettingActivity;->finish()V

    .line 303
    return-void
.end method
