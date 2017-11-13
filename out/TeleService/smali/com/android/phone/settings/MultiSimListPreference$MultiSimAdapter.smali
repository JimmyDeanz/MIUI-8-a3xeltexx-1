.class Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter;
.super Landroid/widget/BaseAdapter;
.source "MultiSimListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/settings/MultiSimListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiSimAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/phone/settings/MultiSimListPreference;


# direct methods
.method constructor <init>(Lcom/android/phone/settings/MultiSimListPreference;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter;->this$0:Lcom/android/phone/settings/MultiSimListPreference;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 122
    iput-object p2, p0, Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter;->mContext:Landroid/content/Context;

    .line 123
    iget-object v0, p0, Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 124
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter;->this$0:Lcom/android/phone/settings/MultiSimListPreference;

    invoke-virtual {v0}, Lcom/android/phone/settings/MultiSimListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 117
    invoke-virtual {p0, p1}, Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter;->getItem(I)Lmiui/telephony/SubscriptionInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Lmiui/telephony/SubscriptionInfo;
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 133
    iget-object v2, p0, Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter;->this$0:Lcom/android/phone/settings/MultiSimListPreference;

    # getter for: Lcom/android/phone/settings/MultiSimListPreference;->mHasDoNotSet:Z
    invoke-static {v2}, Lcom/android/phone/settings/MultiSimListPreference;->access$100(Lcom/android/phone/settings/MultiSimListPreference;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez p1, :cond_1

    .line 137
    :cond_0
    :goto_0
    return-object v1

    .line 136
    :cond_1
    iget-object v2, p0, Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter;->this$0:Lcom/android/phone/settings/MultiSimListPreference;

    # getter for: Lcom/android/phone/settings/MultiSimListPreference;->mHasDoNotSet:Z
    invoke-static {v2}, Lcom/android/phone/settings/MultiSimListPreference;->access$100(Lcom/android/phone/settings/MultiSimListPreference;)Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v0, p1, -0x1

    .line 137
    .local v0, "realPosition":I
    :goto_1
    iget-object v2, p0, Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter;->this$0:Lcom/android/phone/settings/MultiSimListPreference;

    # getter for: Lcom/android/phone/settings/MultiSimListPreference;->mSimInfoRecordList:Ljava/util/List;
    invoke-static {v2}, Lcom/android/phone/settings/MultiSimListPreference;->access$200(Lcom/android/phone/settings/MultiSimListPreference;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v0, :cond_0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter;->this$0:Lcom/android/phone/settings/MultiSimListPreference;

    # getter for: Lcom/android/phone/settings/MultiSimListPreference;->mSimInfoRecordList:Ljava/util/List;
    invoke-static {v1}, Lcom/android/phone/settings/MultiSimListPreference;->access$200(Lcom/android/phone/settings/MultiSimListPreference;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/telephony/SubscriptionInfo;

    goto :goto_0

    .end local v0    # "realPosition":I
    :cond_2
    move v0, p1

    .line 136
    goto :goto_1
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 142
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v7, 0x0

    const/4 v11, 0x1

    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 157
    if-nez p2, :cond_0

    .line 158
    iget-object v5, p0, Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f040021

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 159
    new-instance v4, Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter$ViewHolder;

    invoke-direct {v4, p0, v7}, Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter$ViewHolder;-><init>(Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter;Lcom/android/phone/settings/MultiSimListPreference$1;)V

    .line 160
    .local v4, "viewHolder":Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter$ViewHolder;
    const v5, 0x7f0e006b

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckedTextView;

    iput-object v5, v4, Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter$ViewHolder;->simDiplayName:Landroid/widget/CheckedTextView;

    .line 162
    const v5, 0x7f0e006c

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v4, Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter$ViewHolder;->simIcon:Landroid/widget/ImageView;

    .line 163
    const v5, 0x7f0e006d

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v4, Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter$ViewHolder;->simNumber:Landroid/widget/TextView;

    .line 164
    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 169
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter;->getItem(I)Lmiui/telephony/SubscriptionInfo;

    move-result-object v2

    .line 170
    .local v2, "simInfo":Lmiui/telephony/SubscriptionInfo;
    if-nez v2, :cond_2

    .line 171
    iget-object v5, v4, Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter$ViewHolder;->simDiplayName:Landroid/widget/CheckedTextView;

    const v6, 0x7f0803b4

    invoke-virtual {v5, v6}, Landroid/widget/CheckedTextView;->setText(I)V

    .line 172
    iget-object v5, v4, Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter$ViewHolder;->simIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 173
    iget-object v5, v4, Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter$ViewHolder;->simNumber:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 174
    sget v5, Lcom/android/phone/settings/MultiSimListPreference;->DO_NOT_SET:I

    iget-object v6, p0, Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter;->this$0:Lcom/android/phone/settings/MultiSimListPreference;

    invoke-virtual {v6}, Lcom/android/phone/settings/MultiSimListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-ne v5, v6, :cond_1

    .line 175
    iget-object v5, v4, Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter$ViewHolder;->simDiplayName:Landroid/widget/CheckedTextView;

    invoke-virtual {v5, v11}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 205
    :goto_1
    return-object p2

    .line 166
    .end local v2    # "simInfo":Lmiui/telephony/SubscriptionInfo;
    .end local v4    # "viewHolder":Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter$ViewHolder;

    .restart local v4    # "viewHolder":Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter$ViewHolder;
    goto :goto_0

    .line 177
    .restart local v2    # "simInfo":Lmiui/telephony/SubscriptionInfo;
    :cond_1
    iget-object v5, v4, Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter$ViewHolder;->simDiplayName:Landroid/widget/CheckedTextView;

    invoke-virtual {v5, v9}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_1

    .line 180
    :cond_2
    invoke-virtual {v2}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v5

    invoke-static {v5}, Lcom/android/phone/MiuiPhoneUtils;->isVirtualSim(I)Z

    move-result v0

    .line 181
    .local v0, "isVirtual":Z
    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/phone/MiuiPhoneUtils;->getVirtualSimCarrierName()Ljava/lang/String;

    move-result-object v1

    .line 182
    .local v1, "name":Ljava/lang/CharSequence;
    :goto_2
    invoke-virtual {v2}, Lmiui/telephony/SubscriptionInfo;->isActivated()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 183
    iget-object v5, v4, Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter$ViewHolder;->simDiplayName:Landroid/widget/CheckedTextView;

    invoke-virtual {v5, v1}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    :goto_3
    if-eqz v0, :cond_5

    const v3, 0x7f020035

    .line 189
    .local v3, "slotResId":I
    :goto_4
    if-lez v3, :cond_6

    .line 190
    iget-object v5, v4, Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter$ViewHolder;->simIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 194
    :goto_5
    iget-object v5, v4, Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter$ViewHolder;->simNumber:Landroid/widget/TextView;

    invoke-virtual {v2}, Lmiui/telephony/SubscriptionInfo;->getDisplayNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v5, v4, Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter$ViewHolder;->simIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 196
    iget-object v5, v4, Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter$ViewHolder;->simNumber:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 198
    invoke-virtual {v2}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v5

    iget-object v6, p0, Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter;->this$0:Lcom/android/phone/settings/MultiSimListPreference;

    invoke-virtual {v6}, Lcom/android/phone/settings/MultiSimListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-ne v5, v6, :cond_7

    .line 199
    iget-object v5, v4, Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter$ViewHolder;->simDiplayName:Landroid/widget/CheckedTextView;

    invoke-virtual {v5, v11}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_1

    .line 181
    .end local v1    # "name":Ljava/lang/CharSequence;
    .end local v3    # "slotResId":I
    :cond_3
    invoke-virtual {v2}, Lmiui/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_2

    .line 185
    .restart local v1    # "name":Ljava/lang/CharSequence;
    :cond_4
    iget-object v5, v4, Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter$ViewHolder;->simDiplayName:Landroid/widget/CheckedTextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0803bd

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 188
    :cond_5
    # getter for: Lcom/android/phone/settings/MultiSimListPreference;->SMALL_SIM_SLOT_ICON:[I
    invoke-static {}, Lcom/android/phone/settings/MultiSimListPreference;->access$400()[I

    move-result-object v5

    invoke-virtual {v2}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v6

    aget v3, v5, v6

    goto :goto_4

    .line 192
    .restart local v3    # "slotResId":I
    :cond_6
    iget-object v5, v4, Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter$ViewHolder;->simIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    .line 201
    :cond_7
    iget-object v5, v4, Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter$ViewHolder;->simDiplayName:Landroid/widget/CheckedTextView;

    invoke-virtual {v5, v9}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto/16 :goto_1
.end method

.method public isEnabled(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 147
    invoke-virtual {p0, p1}, Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter;->getItem(I)Lmiui/telephony/SubscriptionInfo;

    move-result-object v0

    .line 148
    .local v0, "simInfo":Lmiui/telephony/SubscriptionInfo;
    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {v0}, Lmiui/telephony/SubscriptionInfo;->isActivated()Z

    move-result v1

    .line 151
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method
