.class Lcom/android/phone/settings/SimPickerPreference$1;
.super Ljava/lang/Object;
.source "SimPickerPreference.java"

# interfaces
.implements Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/settings/SimPickerPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/settings/SimPickerPreference;


# direct methods
.method constructor <init>(Lcom/android/phone/settings/SimPickerPreference;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/phone/settings/SimPickerPreference$1;->this$0:Lcom/android/phone/settings/SimPickerPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/phone/settings/SimPickerPreference$1;->this$0:Lcom/android/phone/settings/SimPickerPreference;

    # invokes: Lcom/android/phone/settings/SimPickerPreference;->updateScreen()V
    invoke-static {v0}, Lcom/android/phone/settings/SimPickerPreference;->access$000(Lcom/android/phone/settings/SimPickerPreference;)V

    .line 38
    return-void
.end method
