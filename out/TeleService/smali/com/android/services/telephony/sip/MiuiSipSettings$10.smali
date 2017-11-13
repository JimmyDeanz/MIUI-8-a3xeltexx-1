.class Lcom/android/services/telephony/sip/MiuiSipSettings$10;
.super Ljava/lang/Object;
.source "MiuiSipSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/services/telephony/sip/MiuiSipSettings;->registerForSipCallOptionPreference()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/services/telephony/sip/MiuiSipSettings;


# direct methods
.method constructor <init>(Lcom/android/services/telephony/sip/MiuiSipSettings;)V
    .locals 0

    .prologue
    .line 489
    iput-object p1, p0, Lcom/android/services/telephony/sip/MiuiSipSettings$10;->this$0:Lcom/android/services/telephony/sip/MiuiSipSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 492
    iget-object v0, p0, Lcom/android/services/telephony/sip/MiuiSipSettings$10;->this$0:Lcom/android/services/telephony/sip/MiuiSipSettings;

    # invokes: Lcom/android/services/telephony/sip/MiuiSipSettings;->handleSipCallOptionsChange(Ljava/lang/Object;)V
    invoke-static {v0, p2}, Lcom/android/services/telephony/sip/MiuiSipSettings;->access$1500(Lcom/android/services/telephony/sip/MiuiSipSettings;Ljava/lang/Object;)V

    .line 493
    const/4 v0, 0x1

    return v0
.end method
