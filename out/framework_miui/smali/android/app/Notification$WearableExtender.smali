.class public final Landroid/app/Notification$WearableExtender;
.super Ljava/lang/Object;
.source "Notification.java"

# interfaces
.implements Landroid/app/Notification$Extender;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WearableExtender"
.end annotation


# static fields
.field private static final DEFAULT_CONTENT_ICON_GRAVITY:I = 0x800005

.field private static final DEFAULT_FLAGS:I = 0x1

.field private static final DEFAULT_GRAVITY:I = 0x50

.field private static final EXTRA_WEARABLE_EXTENSIONS:Ljava/lang/String; = "android.wearable.EXTENSIONS"

.field private static final FLAG_CONTENT_INTENT_AVAILABLE_OFFLINE:I = 0x1

.field private static final FLAG_HINT_AVOID_BACKGROUND_CLIPPING:I = 0x10

.field private static final FLAG_HINT_HIDE_ICON:I = 0x2

.field private static final FLAG_HINT_SHOW_BACKGROUND_ONLY:I = 0x4

.field private static final FLAG_START_SCROLL_BOTTOM:I = 0x8

.field private static final KEY_ACTIONS:Ljava/lang/String; = "actions"

.field private static final KEY_BACKGROUND:Ljava/lang/String; = "background"

.field private static final KEY_CONTENT_ACTION_INDEX:Ljava/lang/String; = "contentActionIndex"

.field private static final KEY_CONTENT_ICON:Ljava/lang/String; = "contentIcon"

.field private static final KEY_CONTENT_ICON_GRAVITY:Ljava/lang/String; = "contentIconGravity"

.field private static final KEY_CUSTOM_CONTENT_HEIGHT:Ljava/lang/String; = "customContentHeight"

.field private static final KEY_CUSTOM_SIZE_PRESET:Ljava/lang/String; = "customSizePreset"

.field private static final KEY_DISPLAY_INTENT:Ljava/lang/String; = "displayIntent"

.field private static final KEY_FLAGS:Ljava/lang/String; = "flags"

.field private static final KEY_GRAVITY:Ljava/lang/String; = "gravity"

.field private static final KEY_HINT_SCREEN_TIMEOUT:Ljava/lang/String; = "hintScreenTimeout"

.field private static final KEY_PAGES:Ljava/lang/String; = "pages"

.field public static final SCREEN_TIMEOUT_LONG:I = -0x1

.field public static final SCREEN_TIMEOUT_SHORT:I = 0x0

.field public static final SIZE_DEFAULT:I = 0x0

.field public static final SIZE_FULL_SCREEN:I = 0x5

.field public static final SIZE_LARGE:I = 0x4

.field public static final SIZE_MEDIUM:I = 0x3

.field public static final SIZE_SMALL:I = 0x2

.field public static final SIZE_XSMALL:I = 0x1

.field public static final UNSET_ACTION_INDEX:I = -0x1


# instance fields
.field private mActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Notification$Action;",
            ">;"
        }
    .end annotation
.end field

.field private mBackground:Landroid/graphics/Bitmap;

.field private mContentActionIndex:I

.field private mContentIcon:I

.field private mContentIconGravity:I

.field private mCustomContentHeight:I

.field private mCustomSizePreset:I

.field private mDisplayIntent:Landroid/app/PendingIntent;

.field private mFlags:I

.field private mGravity:I

.field private mHintScreenTimeout:I

.field private mPages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Notification;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 4724
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4707
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$WearableExtender;->mActions:Ljava/util/ArrayList;

    .line 4708
    const/4 v0, 0x1

    iput v0, p0, Landroid/app/Notification$WearableExtender;->mFlags:I

    .line 4710
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$WearableExtender;->mPages:Ljava/util/ArrayList;

    .line 4713
    const v0, 0x800005

    iput v0, p0, Landroid/app/Notification$WearableExtender;->mContentIconGravity:I

    .line 4714
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/Notification$WearableExtender;->mContentActionIndex:I

    .line 4715
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/Notification$WearableExtender;->mCustomSizePreset:I

    .line 4717
    const/16 v0, 0x50

    iput v0, p0, Landroid/app/Notification$WearableExtender;->mGravity:I

    .line 4725
    return-void
.end method

.method public constructor <init>(Landroid/app/Notification;)V
    .locals 10
    .param p1, "notif"    # Landroid/app/Notification;

    .prologue
    const v9, 0x800005

    const/16 v8, 0x50

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 4727
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4707
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/app/Notification$WearableExtender;->mActions:Ljava/util/ArrayList;

    .line 4708
    iput v7, p0, Landroid/app/Notification$WearableExtender;->mFlags:I

    .line 4710
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/app/Notification$WearableExtender;->mPages:Ljava/util/ArrayList;

    .line 4713
    iput v9, p0, Landroid/app/Notification$WearableExtender;->mContentIconGravity:I

    .line 4714
    iput v5, p0, Landroid/app/Notification$WearableExtender;->mContentActionIndex:I

    .line 4715
    iput v6, p0, Landroid/app/Notification$WearableExtender;->mCustomSizePreset:I

    .line 4717
    iput v8, p0, Landroid/app/Notification$WearableExtender;->mGravity:I

    .line 4728
    iget-object v3, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v4, "android.wearable.EXTENSIONS"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 4729
    .local v2, "wearableBundle":Landroid/os/Bundle;
    if-eqz v2, :cond_2

    .line 4730
    const-string v3, "actions"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 4731
    .local v0, "actions":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$Action;>;"
    if-eqz v0, :cond_0

    .line 4732
    iget-object v3, p0, Landroid/app/Notification$WearableExtender;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4735
    :cond_0
    const-string v3, "flags"

    invoke-virtual {v2, v3, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/Notification$WearableExtender;->mFlags:I

    .line 4736
    const-string v3, "displayIntent"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    iput-object v3, p0, Landroid/app/Notification$WearableExtender;->mDisplayIntent:Landroid/app/PendingIntent;

    .line 4738
    const-string/jumbo v3, "pages"

    # invokes: Landroid/app/Notification;->getNotificationArrayFromBundle(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/app/Notification;
    invoke-static {v2, v3}, Landroid/app/Notification;->access$2700(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/app/Notification;

    move-result-object v1

    .line 4740
    .local v1, "pages":[Landroid/app/Notification;
    if-eqz v1, :cond_1

    .line 4741
    iget-object v3, p0, Landroid/app/Notification$WearableExtender;->mPages:Ljava/util/ArrayList;

    invoke-static {v3, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 4744
    :cond_1
    const-string v3, "background"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    iput-object v3, p0, Landroid/app/Notification$WearableExtender;->mBackground:Landroid/graphics/Bitmap;

    .line 4745
    const-string v3, "contentIcon"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Landroid/app/Notification$WearableExtender;->mContentIcon:I

    .line 4746
    const-string v3, "contentIconGravity"

    invoke-virtual {v2, v3, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/Notification$WearableExtender;->mContentIconGravity:I

    .line 4748
    const-string v3, "contentActionIndex"

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/Notification$WearableExtender;->mContentActionIndex:I

    .line 4750
    const-string v3, "customSizePreset"

    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/Notification$WearableExtender;->mCustomSizePreset:I

    .line 4752
    const-string v3, "customContentHeight"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Landroid/app/Notification$WearableExtender;->mCustomContentHeight:I

    .line 4753
    const-string v3, "gravity"

    invoke-virtual {v2, v3, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/Notification$WearableExtender;->mGravity:I

    .line 4754
    const-string/jumbo v3, "hintScreenTimeout"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Landroid/app/Notification$WearableExtender;->mHintScreenTimeout:I

    .line 4756
    .end local v0    # "actions":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$Action;>;"
    .end local v1    # "pages":[Landroid/app/Notification;
    :cond_2
    return-void
.end method

.method private setFlag(IZ)V
    .locals 2
    .param p1, "mask"    # I
    .param p2, "value"    # Z

    .prologue
    .line 5267
    if-eqz p2, :cond_0

    .line 5268
    iget v0, p0, Landroid/app/Notification$WearableExtender;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/app/Notification$WearableExtender;->mFlags:I

    .line 5272
    :goto_0
    return-void

    .line 5270
    :cond_0
    iget v0, p0, Landroid/app/Notification$WearableExtender;->mFlags:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/app/Notification$WearableExtender;->mFlags:I

    goto :goto_0
.end method


# virtual methods
.method public addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$WearableExtender;
    .locals 1
    .param p1, "action"    # Landroid/app/Notification$Action;

    .prologue
    .line 4841
    iget-object v0, p0, Landroid/app/Notification$WearableExtender;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4842
    return-object p0
.end method

.method public addActions(Ljava/util/List;)Landroid/app/Notification$WearableExtender;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/Notification$Action;",
            ">;)",
            "Landroid/app/Notification$WearableExtender;"
        }
    .end annotation

    .prologue
    .line 4858
    .local p1, "actions":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$Action;>;"
    iget-object v0, p0, Landroid/app/Notification$WearableExtender;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4859
    return-object p0
.end method

.method public addPage(Landroid/app/Notification;)Landroid/app/Notification$WearableExtender;
    .locals 1
    .param p1, "page"    # Landroid/app/Notification;

    .prologue
    .line 4933
    iget-object v0, p0, Landroid/app/Notification$WearableExtender;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4934
    return-object p0
.end method

.method public addPages(Ljava/util/List;)Landroid/app/Notification$WearableExtender;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/Notification;",
            ">;)",
            "Landroid/app/Notification$WearableExtender;"
        }
    .end annotation

    .prologue
    .line 4948
    .local p1, "pages":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification;>;"
    iget-object v0, p0, Landroid/app/Notification$WearableExtender;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4949
    return-object p0
.end method

.method public clearActions()Landroid/app/Notification$WearableExtender;
    .locals 1

    .prologue
    .line 4868
    iget-object v0, p0, Landroid/app/Notification$WearableExtender;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4869
    return-object p0
.end method

.method public clearPages()Landroid/app/Notification$WearableExtender;
    .locals 1

    .prologue
    .line 4958
    iget-object v0, p0, Landroid/app/Notification$WearableExtender;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4959
    return-object p0
.end method

.method public clone()Landroid/app/Notification$WearableExtender;
    .locals 3

    .prologue
    .line 4812
    new-instance v0, Landroid/app/Notification$WearableExtender;

    invoke-direct {v0}, Landroid/app/Notification$WearableExtender;-><init>()V

    .line 4813
    .local v0, "that":Landroid/app/Notification$WearableExtender;
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/app/Notification$WearableExtender;->mActions:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroid/app/Notification$WearableExtender;->mActions:Ljava/util/ArrayList;

    .line 4814
    iget v1, p0, Landroid/app/Notification$WearableExtender;->mFlags:I

    iput v1, v0, Landroid/app/Notification$WearableExtender;->mFlags:I

    .line 4815
    iget-object v1, p0, Landroid/app/Notification$WearableExtender;->mDisplayIntent:Landroid/app/PendingIntent;

    iput-object v1, v0, Landroid/app/Notification$WearableExtender;->mDisplayIntent:Landroid/app/PendingIntent;

    .line 4816
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/app/Notification$WearableExtender;->mPages:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroid/app/Notification$WearableExtender;->mPages:Ljava/util/ArrayList;

    .line 4817
    iget-object v1, p0, Landroid/app/Notification$WearableExtender;->mBackground:Landroid/graphics/Bitmap;

    iput-object v1, v0, Landroid/app/Notification$WearableExtender;->mBackground:Landroid/graphics/Bitmap;

    .line 4818
    iget v1, p0, Landroid/app/Notification$WearableExtender;->mContentIcon:I

    iput v1, v0, Landroid/app/Notification$WearableExtender;->mContentIcon:I

    .line 4819
    iget v1, p0, Landroid/app/Notification$WearableExtender;->mContentIconGravity:I

    iput v1, v0, Landroid/app/Notification$WearableExtender;->mContentIconGravity:I

    .line 4820
    iget v1, p0, Landroid/app/Notification$WearableExtender;->mContentActionIndex:I

    iput v1, v0, Landroid/app/Notification$WearableExtender;->mContentActionIndex:I

    .line 4821
    iget v1, p0, Landroid/app/Notification$WearableExtender;->mCustomSizePreset:I

    iput v1, v0, Landroid/app/Notification$WearableExtender;->mCustomSizePreset:I

    .line 4822
    iget v1, p0, Landroid/app/Notification$WearableExtender;->mCustomContentHeight:I

    iput v1, v0, Landroid/app/Notification$WearableExtender;->mCustomContentHeight:I

    .line 4823
    iget v1, p0, Landroid/app/Notification$WearableExtender;->mGravity:I

    iput v1, v0, Landroid/app/Notification$WearableExtender;->mGravity:I

    .line 4824
    iget v1, p0, Landroid/app/Notification$WearableExtender;->mHintScreenTimeout:I

    iput v1, v0, Landroid/app/Notification$WearableExtender;->mHintScreenTimeout:I

    .line 4825
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 4609
    invoke-virtual {p0}, Landroid/app/Notification$WearableExtender;->clone()Landroid/app/Notification$WearableExtender;

    move-result-object v0

    return-object v0
.end method

.method public extend(Landroid/app/Notification$Builder;)Landroid/app/Notification$Builder;
    .locals 4
    .param p1, "builder"    # Landroid/app/Notification$Builder;

    .prologue
    .line 4765
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4767
    .local v0, "wearableBundle":Landroid/os/Bundle;
    iget-object v1, p0, Landroid/app/Notification$WearableExtender;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4768
    const-string v1, "actions"

    iget-object v2, p0, Landroid/app/Notification$WearableExtender;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 4770
    :cond_0
    iget v1, p0, Landroid/app/Notification$WearableExtender;->mFlags:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 4771
    const-string v1, "flags"

    iget v2, p0, Landroid/app/Notification$WearableExtender;->mFlags:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4773
    :cond_1
    iget-object v1, p0, Landroid/app/Notification$WearableExtender;->mDisplayIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_2

    .line 4774
    const-string v1, "displayIntent"

    iget-object v2, p0, Landroid/app/Notification$WearableExtender;->mDisplayIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4776
    :cond_2
    iget-object v1, p0, Landroid/app/Notification$WearableExtender;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 4777
    const-string/jumbo v2, "pages"

    iget-object v1, p0, Landroid/app/Notification$WearableExtender;->mPages:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/app/Notification$WearableExtender;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/app/Notification;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/os/Parcelable;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 4780
    :cond_3
    iget-object v1, p0, Landroid/app/Notification$WearableExtender;->mBackground:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    .line 4781
    const-string v1, "background"

    iget-object v2, p0, Landroid/app/Notification$WearableExtender;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4783
    :cond_4
    iget v1, p0, Landroid/app/Notification$WearableExtender;->mContentIcon:I

    if-eqz v1, :cond_5

    .line 4784
    const-string v1, "contentIcon"

    iget v2, p0, Landroid/app/Notification$WearableExtender;->mContentIcon:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4786
    :cond_5
    iget v1, p0, Landroid/app/Notification$WearableExtender;->mContentIconGravity:I

    const v2, 0x800005

    if-eq v1, v2, :cond_6

    .line 4787
    const-string v1, "contentIconGravity"

    iget v2, p0, Landroid/app/Notification$WearableExtender;->mContentIconGravity:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4789
    :cond_6
    iget v1, p0, Landroid/app/Notification$WearableExtender;->mContentActionIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_7

    .line 4790
    const-string v1, "contentActionIndex"

    iget v2, p0, Landroid/app/Notification$WearableExtender;->mContentActionIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4793
    :cond_7
    iget v1, p0, Landroid/app/Notification$WearableExtender;->mCustomSizePreset:I

    if-eqz v1, :cond_8

    .line 4794
    const-string v1, "customSizePreset"

    iget v2, p0, Landroid/app/Notification$WearableExtender;->mCustomSizePreset:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4796
    :cond_8
    iget v1, p0, Landroid/app/Notification$WearableExtender;->mCustomContentHeight:I

    if-eqz v1, :cond_9

    .line 4797
    const-string v1, "customContentHeight"

    iget v2, p0, Landroid/app/Notification$WearableExtender;->mCustomContentHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4799
    :cond_9
    iget v1, p0, Landroid/app/Notification$WearableExtender;->mGravity:I

    const/16 v2, 0x50

    if-eq v1, v2, :cond_a

    .line 4800
    const-string v1, "gravity"

    iget v2, p0, Landroid/app/Notification$WearableExtender;->mGravity:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4802
    :cond_a
    iget v1, p0, Landroid/app/Notification$WearableExtender;->mHintScreenTimeout:I

    if-eqz v1, :cond_b

    .line 4803
    const-string/jumbo v1, "hintScreenTimeout"

    iget v2, p0, Landroid/app/Notification$WearableExtender;->mHintScreenTimeout:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4806
    :cond_b
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "android.wearable.EXTENSIONS"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 4807
    return-object p1
.end method

.method public getActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/Notification$Action;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4876
    iget-object v0, p0, Landroid/app/Notification$WearableExtender;->mActions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getBackground()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 4996
    iget-object v0, p0, Landroid/app/Notification$WearableExtender;->mBackground:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getContentAction()I
    .locals 1

    .prologue
    .line 5069
    iget v0, p0, Landroid/app/Notification$WearableExtender;->mContentActionIndex:I

    return v0
.end method

.method public getContentIcon()I
    .locals 1

    .prologue
    .line 5011
    iget v0, p0, Landroid/app/Notification$WearableExtender;->mContentIcon:I

    return v0
.end method

.method public getContentIconGravity()I
    .locals 1

    .prologue
    .line 5032
    iget v0, p0, Landroid/app/Notification$WearableExtender;->mContentIconGravity:I

    return v0
.end method

.method public getContentIntentAvailableOffline()Z
    .locals 1

    .prologue
    .line 5179
    iget v0, p0, Landroid/app/Notification$WearableExtender;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCustomContentHeight()I
    .locals 1

    .prologue
    .line 5138
    iget v0, p0, Landroid/app/Notification$WearableExtender;->mCustomContentHeight:I

    return v0
.end method

.method public getCustomSizePreset()I
    .locals 1

    .prologue
    .line 5116
    iget v0, p0, Landroid/app/Notification$WearableExtender;->mCustomSizePreset:I

    return v0
.end method

.method public getDisplayIntent()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 4919
    iget-object v0, p0, Landroid/app/Notification$WearableExtender;->mDisplayIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getGravity()I
    .locals 1

    .prologue
    .line 5090
    iget v0, p0, Landroid/app/Notification$WearableExtender;->mGravity:I

    return v0
.end method

.method public getHintAvoidBackgroundClipping()Z
    .locals 1

    .prologue
    .line 5241
    iget v0, p0, Landroid/app/Notification$WearableExtender;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHintHideIcon()Z
    .locals 1

    .prologue
    .line 5198
    iget v0, p0, Landroid/app/Notification$WearableExtender;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHintScreenTimeout()I
    .locals 1

    .prologue
    .line 5263
    iget v0, p0, Landroid/app/Notification$WearableExtender;->mHintScreenTimeout:I

    return v0
.end method

.method public getHintShowBackgroundOnly()Z
    .locals 1

    .prologue
    .line 5217
    iget v0, p0, Landroid/app/Notification$WearableExtender;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/Notification;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4970
    iget-object v0, p0, Landroid/app/Notification$WearableExtender;->mPages:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getStartScrollBottom()Z
    .locals 1

    .prologue
    .line 5157
    iget v0, p0, Landroid/app/Notification$WearableExtender;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBackground(Landroid/graphics/Bitmap;)Landroid/app/Notification$WearableExtender;
    .locals 0
    .param p1, "background"    # Landroid/graphics/Bitmap;

    .prologue
    .line 4983
    iput-object p1, p0, Landroid/app/Notification$WearableExtender;->mBackground:Landroid/graphics/Bitmap;

    .line 4984
    return-object p0
.end method

.method public setContentAction(I)Landroid/app/Notification$WearableExtender;
    .locals 0
    .param p1, "actionIndex"    # I

    .prologue
    .line 5050
    iput p1, p0, Landroid/app/Notification$WearableExtender;->mContentActionIndex:I

    .line 5051
    return-object p0
.end method

.method public setContentIcon(I)Landroid/app/Notification$WearableExtender;
    .locals 0
    .param p1, "icon"    # I

    .prologue
    .line 5003
    iput p1, p0, Landroid/app/Notification$WearableExtender;->mContentIcon:I

    .line 5004
    return-object p0
.end method

.method public setContentIconGravity(I)Landroid/app/Notification$WearableExtender;
    .locals 0
    .param p1, "contentIconGravity"    # I

    .prologue
    .line 5021
    iput p1, p0, Landroid/app/Notification$WearableExtender;->mContentIconGravity:I

    .line 5022
    return-object p0
.end method

.method public setContentIntentAvailableOffline(Z)Landroid/app/Notification$WearableExtender;
    .locals 1
    .param p1, "contentIntentAvailableOffline"    # Z

    .prologue
    .line 5168
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/app/Notification$WearableExtender;->setFlag(IZ)V

    .line 5169
    return-object p0
.end method

.method public setCustomContentHeight(I)Landroid/app/Notification$WearableExtender;
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 5127
    iput p1, p0, Landroid/app/Notification$WearableExtender;->mCustomContentHeight:I

    .line 5128
    return-object p0
.end method

.method public setCustomSizePreset(I)Landroid/app/Notification$WearableExtender;
    .locals 0
    .param p1, "sizePreset"    # I

    .prologue
    .line 5103
    iput p1, p0, Landroid/app/Notification$WearableExtender;->mCustomSizePreset:I

    .line 5104
    return-object p0
.end method

.method public setDisplayIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$WearableExtender;
    .locals 0
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 4910
    iput-object p1, p0, Landroid/app/Notification$WearableExtender;->mDisplayIntent:Landroid/app/PendingIntent;

    .line 4911
    return-object p0
.end method

.method public setGravity(I)Landroid/app/Notification$WearableExtender;
    .locals 0
    .param p1, "gravity"    # I

    .prologue
    .line 5079
    iput p1, p0, Landroid/app/Notification$WearableExtender;->mGravity:I

    .line 5080
    return-object p0
.end method

.method public setHintAvoidBackgroundClipping(Z)Landroid/app/Notification$WearableExtender;
    .locals 1
    .param p1, "hintAvoidBackgroundClipping"    # Z

    .prologue
    .line 5229
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Landroid/app/Notification$WearableExtender;->setFlag(IZ)V

    .line 5230
    return-object p0
.end method

.method public setHintHideIcon(Z)Landroid/app/Notification$WearableExtender;
    .locals 1
    .param p1, "hintHideIcon"    # Z

    .prologue
    .line 5188
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/app/Notification$WearableExtender;->setFlag(IZ)V

    .line 5189
    return-object p0
.end method

.method public setHintScreenTimeout(I)Landroid/app/Notification$WearableExtender;
    .locals 0
    .param p1, "timeout"    # I

    .prologue
    .line 5252
    iput p1, p0, Landroid/app/Notification$WearableExtender;->mHintScreenTimeout:I

    .line 5253
    return-object p0
.end method

.method public setHintShowBackgroundOnly(Z)Landroid/app/Notification$WearableExtender;
    .locals 1
    .param p1, "hintShowBackgroundOnly"    # Z

    .prologue
    .line 5207
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Landroid/app/Notification$WearableExtender;->setFlag(IZ)V

    .line 5208
    return-object p0
.end method

.method public setStartScrollBottom(Z)Landroid/app/Notification$WearableExtender;
    .locals 1
    .param p1, "startScrollBottom"    # Z

    .prologue
    .line 5147
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Landroid/app/Notification$WearableExtender;->setFlag(IZ)V

    .line 5148
    return-object p0
.end method
