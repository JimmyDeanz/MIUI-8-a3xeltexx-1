.class public Lcom/android/phone/settings/EditCustomLocationActivity;
.super Lmiui/app/Activity;
.source "EditCustomLocationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/settings/EditCustomLocationActivity$TextChangeListener;,
        Lcom/android/phone/settings/EditCustomLocationActivity$QueryHandler;
    }
.end annotation


# instance fields
.field private isCreateNew:Z

.field private mBtnDelete:Landroid/widget/Button;

.field private mBtnDone:Landroid/widget/Button;

.field private mId:I

.field private mLocationView:Landroid/widget/TextView;

.field private mNumberView:Landroid/widget/TextView;

.field private mQueryHandler:Lcom/android/phone/settings/EditCustomLocationActivity$QueryHandler;

.field private mType:Landroid/widget/RadioGroup;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    .line 52
    iput-boolean v0, p0, Lcom/android/phone/settings/EditCustomLocationActivity;->isCreateNew:Z

    .line 54
    iput v0, p0, Lcom/android/phone/settings/EditCustomLocationActivity;->mId:I

    .line 270
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/settings/EditCustomLocationActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/EditCustomLocationActivity;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/phone/settings/EditCustomLocationActivity;->resetDoneButtonEnabled()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/settings/EditCustomLocationActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/EditCustomLocationActivity;

    .prologue
    .line 31
    iget v0, p0, Lcom/android/phone/settings/EditCustomLocationActivity;->mId:I

    return v0
.end method

.method private getTypeId()I
    .locals 2

    .prologue
    .line 204
    const/4 v0, -0x1

    .line 206
    .local v0, "id":I
    iget-object v1, p0, Lcom/android/phone/settings/EditCustomLocationActivity;->mType:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 219
    :goto_0
    return v0

    .line 208
    :pswitch_0
    const/4 v0, 0x0

    .line 209
    goto :goto_0

    .line 211
    :pswitch_1
    const/4 v0, 0x1

    .line 212
    goto :goto_0

    .line 214
    :pswitch_2
    const/4 v0, 0x2

    .line 215
    goto :goto_0

    .line 206
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e0043
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private resetDoneButtonEnabled()V
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/phone/settings/EditCustomLocationActivity;->mNumberView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/settings/EditCustomLocationActivity;->mLocationView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/settings/EditCustomLocationActivity;->getTypeId()I

    move-result v0

    if-ltz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/android/phone/settings/EditCustomLocationActivity;->mBtnDone:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 229
    :goto_0
    return-void

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/android/phone/settings/EditCustomLocationActivity;->mBtnDone:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private save()V
    .locals 12

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v11, 0x0

    .line 232
    iget-object v0, p0, Lcom/android/phone/settings/EditCustomLocationActivity;->mNumberView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    .line 233
    .local v9, "number":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/phone/settings/EditCustomLocationActivity;->mLocationView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .line 234
    .local v8, "location":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/phone/settings/EditCustomLocationActivity;->getTypeId()I

    move-result v7

    .line 236
    .local v7, "id":I
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 237
    .local v4, "values":Landroid/content/ContentValues;
    const-string v0, "number"

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const-string v0, "location"

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const-string v0, "type"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 241
    iget-boolean v0, p0, Lcom/android/phone/settings/EditCustomLocationActivity;->isCreateNew:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/phone/settings/EditCustomLocationActivity;->mId:I

    if-lez v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/android/phone/settings/EditCustomLocationActivity;->mQueryHandler:Lcom/android/phone/settings/EditCustomLocationActivity$QueryHandler;

    sget-object v3, Lmiui/provider/Telocation;->CONTENT_CUSTOM_LOCATION_URI:Landroid/net/Uri;

    const-string v5, "_id=?"

    new-array v6, v1, [Ljava/lang/String;

    iget v10, p0, Lcom/android/phone/settings/EditCustomLocationActivity;->mId:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v11

    invoke-virtual/range {v0 .. v6}, Lcom/android/phone/settings/EditCustomLocationActivity$QueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 249
    :goto_0
    return-void

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/android/phone/settings/EditCustomLocationActivity;->mQueryHandler:Lcom/android/phone/settings/EditCustomLocationActivity$QueryHandler;

    sget-object v1, Lmiui/provider/Telocation;->CONTENT_CUSTOM_LOCATION_URI:Landroid/net/Uri;

    invoke-virtual {v0, v11, v2, v1, v4}, Lcom/android/phone/settings/EditCustomLocationActivity$QueryHandler;->startInsert(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v11, 0x7f0803db

    const/4 v10, 0x2

    const/16 v9, 0x30

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 156
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 158
    :pswitch_0
    iget-object v5, p0, Lcom/android/phone/settings/EditCustomLocationActivity;->mNumberView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 160
    .local v3, "number":Ljava/lang/CharSequence;
    invoke-interface {v3, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0x2b

    if-eq v5, v6, :cond_1

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-le v5, v7, :cond_2

    invoke-interface {v3, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-ne v5, v9, :cond_2

    invoke-interface {v3, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-ne v5, v9, :cond_2

    .line 161
    :cond_1
    invoke-virtual {p0, v8}, Lcom/android/phone/settings/EditCustomLocationActivity;->showDialog(I)V

    goto :goto_0

    .line 165
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/settings/EditCustomLocationActivity;->getTypeId()I

    move-result v4

    .line 166
    .local v4, "typeId":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v2, v5, :cond_9

    .line 167
    invoke-interface {v3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 168
    .local v0, "c":C
    if-lt v0, v9, :cond_3

    const/16 v5, 0x39

    if-le v0, v5, :cond_4

    :cond_3
    if-ne v4, v10, :cond_5

    const/16 v5, 0x23

    if-ne v0, v5, :cond_5

    .line 166
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 171
    :cond_5
    const/4 v1, 0x0

    .line 172
    .local v1, "errorMsg":Ljava/lang/String;
    if-ne v4, v10, :cond_7

    .line 173
    const v5, 0x7f0803dc

    new-array v6, v7, [Ljava/lang/Object;

    const v7, 0x7f0803d6

    invoke-virtual {p0, v7}, Lcom/android/phone/settings/EditCustomLocationActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {p0, v5, v6}, Lcom/android/phone/settings/EditCustomLocationActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 183
    :cond_6
    :goto_2
    if-eqz v1, :cond_0

    .line 184
    iget-object v5, p0, Lcom/android/phone/settings/EditCustomLocationActivity;->mNumberView:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 175
    :cond_7
    if-nez v4, :cond_8

    .line 176
    new-array v5, v7, [Ljava/lang/Object;

    const v6, 0x7f0803d8

    invoke-virtual {p0, v6}, Lcom/android/phone/settings/EditCustomLocationActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v11, v5}, Lcom/android/phone/settings/EditCustomLocationActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 178
    :cond_8
    if-ne v4, v7, :cond_6

    .line 179
    new-array v5, v7, [Ljava/lang/Object;

    const v6, 0x7f0803d7

    invoke-virtual {p0, v6}, Lcom/android/phone/settings/EditCustomLocationActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v11, v5}, Lcom/android/phone/settings/EditCustomLocationActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 189
    .end local v0    # "c":C
    .end local v1    # "errorMsg":Ljava/lang/String;
    :cond_9
    invoke-direct {p0}, Lcom/android/phone/settings/EditCustomLocationActivity;->save()V

    goto/16 :goto_0

    .line 192
    .end local v2    # "i":I
    .end local v3    # "number":Ljava/lang/CharSequence;
    .end local v4    # "typeId":I
    :pswitch_1
    invoke-virtual {p0, v7}, Lcom/android/phone/settings/EditCustomLocationActivity;->showDialog(I)V

    goto/16 :goto_0

    .line 195
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/phone/settings/EditCustomLocationActivity;->finish()V

    goto/16 :goto_0

    .line 156
    :pswitch_data_0
    .packed-switch 0x7f0e0046
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v8, 0x7f0e0044

    const v7, 0x7f0e0043

    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 58
    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const v3, 0x7f040015

    invoke-virtual {p0, v3}, Lcom/android/phone/settings/EditCustomLocationActivity;->setContentView(I)V

    .line 60
    const v3, 0x7f0803c6

    invoke-virtual {p0, v3}, Lcom/android/phone/settings/EditCustomLocationActivity;->setTitle(I)V

    .line 62
    const v3, 0x7f0e0040

    invoke-virtual {p0, v3}, Lcom/android/phone/settings/EditCustomLocationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/settings/EditCustomLocationActivity;->mNumberView:Landroid/widget/TextView;

    .line 63
    const v3, 0x7f0e0041

    invoke-virtual {p0, v3}, Lcom/android/phone/settings/EditCustomLocationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/settings/EditCustomLocationActivity;->mLocationView:Landroid/widget/TextView;

    .line 65
    new-instance v1, Lcom/android/phone/settings/EditCustomLocationActivity$TextChangeListener;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/android/phone/settings/EditCustomLocationActivity$TextChangeListener;-><init>(Lcom/android/phone/settings/EditCustomLocationActivity;Lcom/android/phone/settings/EditCustomLocationActivity$1;)V

    .line 67
    .local v1, "textChangeListener":Lcom/android/phone/settings/EditCustomLocationActivity$TextChangeListener;
    iget-object v3, p0, Lcom/android/phone/settings/EditCustomLocationActivity;->mNumberView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 68
    iget-object v3, p0, Lcom/android/phone/settings/EditCustomLocationActivity;->mLocationView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 70
    const v3, 0x7f0e0048

    invoke-virtual {p0, v3}, Lcom/android/phone/settings/EditCustomLocationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/phone/settings/EditCustomLocationActivity;->mBtnDone:Landroid/widget/Button;

    .line 71
    iget-object v3, p0, Lcom/android/phone/settings/EditCustomLocationActivity;->mBtnDone:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v3, p0, Lcom/android/phone/settings/EditCustomLocationActivity;->mBtnDone:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 73
    const v3, 0x7f0e0047

    invoke-virtual {p0, v3}, Lcom/android/phone/settings/EditCustomLocationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    const v3, 0x7f0e0046

    invoke-virtual {p0, v3}, Lcom/android/phone/settings/EditCustomLocationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/phone/settings/EditCustomLocationActivity;->mBtnDelete:Landroid/widget/Button;

    .line 76
    iget-object v3, p0, Lcom/android/phone/settings/EditCustomLocationActivity;->mBtnDelete:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    const v3, 0x7f0e0042

    invoke-virtual {p0, v3}, Lcom/android/phone/settings/EditCustomLocationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioGroup;

    iput-object v3, p0, Lcom/android/phone/settings/EditCustomLocationActivity;->mType:Landroid/widget/RadioGroup;

    .line 79
    iget-object v3, p0, Lcom/android/phone/settings/EditCustomLocationActivity;->mType:Landroid/widget/RadioGroup;

    new-instance v5, Lcom/android/phone/settings/EditCustomLocationActivity$1;

    invoke-direct {v5, p0}, Lcom/android/phone/settings/EditCustomLocationActivity$1;-><init>(Lcom/android/phone/settings/EditCustomLocationActivity;)V

    invoke-virtual {v3, v5}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 87
    invoke-virtual {p0, v8}, Lcom/android/phone/settings/EditCustomLocationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    invoke-virtual {v3, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 89
    invoke-virtual {p0}, Lcom/android/phone/settings/EditCustomLocationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 90
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v5, "action_add_custom_location"

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/phone/settings/EditCustomLocationActivity;->isCreateNew:Z

    .line 93
    iget-object v5, p0, Lcom/android/phone/settings/EditCustomLocationActivity;->mBtnDelete:Landroid/widget/Button;

    iget-boolean v3, p0, Lcom/android/phone/settings/EditCustomLocationActivity;->isCreateNew:Z

    if-eqz v3, :cond_1

    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v5, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 94
    iget-boolean v3, p0, Lcom/android/phone/settings/EditCustomLocationActivity;->isCreateNew:Z

    if-nez v3, :cond_0

    .line 95
    const-string v3, "_id"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/phone/settings/EditCustomLocationActivity;->mId:I

    .line 96
    iget-object v3, p0, Lcom/android/phone/settings/EditCustomLocationActivity;->mNumberView:Landroid/widget/TextView;

    const-string v5, "number"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v3, p0, Lcom/android/phone/settings/EditCustomLocationActivity;->mLocationView:Landroid/widget/TextView;

    const-string v5, "location"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    const-string v3, "type"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 99
    .local v2, "type":I
    packed-switch v2, :pswitch_data_0

    .line 110
    invoke-virtual {p0, v7}, Lcom/android/phone/settings/EditCustomLocationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    invoke-virtual {v3, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 115
    .end local v2    # "type":I
    :cond_0
    :goto_1
    new-instance v3, Lcom/android/phone/settings/EditCustomLocationActivity$QueryHandler;

    invoke-direct {v3, p0, p0}, Lcom/android/phone/settings/EditCustomLocationActivity$QueryHandler;-><init>(Lcom/android/phone/settings/EditCustomLocationActivity;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/phone/settings/EditCustomLocationActivity;->mQueryHandler:Lcom/android/phone/settings/EditCustomLocationActivity$QueryHandler;

    .line 116
    return-void

    :cond_1
    move v3, v4

    .line 93
    goto :goto_0

    .line 101
    .restart local v2    # "type":I
    :pswitch_0
    invoke-virtual {p0, v7}, Lcom/android/phone/settings/EditCustomLocationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    invoke-virtual {v3, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    .line 104
    :pswitch_1
    invoke-virtual {p0, v8}, Lcom/android/phone/settings/EditCustomLocationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    invoke-virtual {v3, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    .line 107
    :pswitch_2
    const v3, 0x7f0e0045

    invoke-virtual {p0, v3}, Lcom/android/phone/settings/EditCustomLocationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    invoke-virtual {v3, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    .line 99
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .param p1, "id"    # I

    .prologue
    const v3, 0x7f0800c3

    .line 120
    const/4 v0, 0x0

    .line 121
    .local v0, "dialog":Landroid/app/AlertDialog;
    packed-switch p1, :pswitch_data_0

    .line 151
    :goto_0
    return-object v0

    .line 123
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0803d9

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/settings/EditCustomLocationActivity$2;

    invoke-direct {v2, p0}, Lcom/android/phone/settings/EditCustomLocationActivity$2;-><init>(Lcom/android/phone/settings/EditCustomLocationActivity;)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 131
    goto :goto_0

    .line 133
    :pswitch_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0803da

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/settings/EditCustomLocationActivity$3;

    invoke-direct {v2, p0}, Lcom/android/phone/settings/EditCustomLocationActivity$3;-><init>(Lcom/android/phone/settings/EditCustomLocationActivity;)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0800c0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 121
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 290
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 291
    .local v0, "itemId":I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 292
    invoke-virtual {p0}, Lcom/android/phone/settings/EditCustomLocationActivity;->finish()V

    .line 293
    const/4 v1, 0x1

    .line 295
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lmiui/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method
