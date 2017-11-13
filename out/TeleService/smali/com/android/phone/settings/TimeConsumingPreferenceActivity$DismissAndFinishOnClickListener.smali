.class Lcom/android/phone/settings/TimeConsumingPreferenceActivity$DismissAndFinishOnClickListener;
.super Ljava/lang/Object;
.source "TimeConsumingPreferenceActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/settings/TimeConsumingPreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DismissAndFinishOnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/settings/TimeConsumingPreferenceActivity;


# direct methods
.method private constructor <init>(Lcom/android/phone/settings/TimeConsumingPreferenceActivity;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/phone/settings/TimeConsumingPreferenceActivity$DismissAndFinishOnClickListener;->this$0:Lcom/android/phone/settings/TimeConsumingPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/settings/TimeConsumingPreferenceActivity;Lcom/android/phone/settings/TimeConsumingPreferenceActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/phone/settings/TimeConsumingPreferenceActivity;
    .param p2, "x1"    # Lcom/android/phone/settings/TimeConsumingPreferenceActivity$1;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/phone/settings/TimeConsumingPreferenceActivity$DismissAndFinishOnClickListener;-><init>(Lcom/android/phone/settings/TimeConsumingPreferenceActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 33
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 34
    iget-object v0, p0, Lcom/android/phone/settings/TimeConsumingPreferenceActivity$DismissAndFinishOnClickListener;->this$0:Lcom/android/phone/settings/TimeConsumingPreferenceActivity;

    invoke-virtual {v0}, Lcom/android/phone/settings/TimeConsumingPreferenceActivity;->finish()V

    .line 35
    return-void
.end method
