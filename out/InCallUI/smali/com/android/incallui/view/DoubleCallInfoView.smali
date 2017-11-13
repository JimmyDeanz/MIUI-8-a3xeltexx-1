.class public Lcom/android/incallui/view/DoubleCallInfoView;
.super Landroid/widget/LinearLayout;
.source "DoubleCallInfoView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/view/DoubleCallInfoView$DoubleCallInfoOperationListener;
    }
.end annotation


# instance fields
.field private mDoubleCallInfoOperationListener:Lcom/android/incallui/view/DoubleCallInfoView$DoubleCallInfoOperationListener;

.field private mMarkTagTextAppearanceSpan:Landroid/text/style/TextAppearanceSpan;

.field private mPrimaryAvatar:Landroid/widget/ImageView;

.field private mPrimaryCallName:Landroid/widget/TextView;

.field private mPrimaryCallState:Landroid/widget/TextView;

.field private mPrimaryCallTime:Landroid/widget/TextView;

.field private mPrimaryConfController:Landroid/widget/ImageView;

.field private mPrimaryHungUp:Landroid/view/View;

.field private mPrimaryInfoView:Landroid/view/View;

.field private mPrimarySimCardInfo:Landroid/widget/ImageView;

.field private mSecondaryAvatar:Landroid/widget/ImageView;

.field private mSecondaryCallName:Landroid/widget/TextView;

.field private mSecondaryCallState:Landroid/widget/TextView;

.field private mSecondaryCallTime:Landroid/widget/TextView;

.field private mSecondaryConfController:Landroid/widget/ImageView;

.field private mSecondaryHungUp:Landroid/view/View;

.field private mSecondaryInfoView:Landroid/view/View;

.field private mSecondarySimCardInfo:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/view/DoubleCallInfoView;)Lcom/android/incallui/view/DoubleCallInfoView$DoubleCallInfoOperationListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/view/DoubleCallInfoView;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mDoubleCallInfoOperationListener:Lcom/android/incallui/view/DoubleCallInfoView$DoubleCallInfoOperationListener;

    return-object v0
.end method

.method private showAndInitializeSecondaryCallInfo(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v2, 0x7f020028

    .line 69
    const v0, 0x7f09008f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mPrimaryInfoView:Landroid/view/View;

    .line 70
    const v0, 0x7f090092

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mPrimaryCallName:Landroid/widget/TextView;

    .line 71
    const v0, 0x7f090093

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mPrimarySimCardInfo:Landroid/widget/ImageView;

    .line 72
    const v0, 0x7f090094

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mPrimaryCallState:Landroid/widget/TextView;

    .line 73
    const v0, 0x7f090095

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mPrimaryCallTime:Landroid/widget/TextView;

    .line 74
    const v0, 0x7f090091

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mPrimaryHungUp:Landroid/view/View;

    .line 75
    const v0, 0x7f090090

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mPrimaryAvatar:Landroid/widget/ImageView;

    .line 76
    const v0, 0x7f090096

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mPrimaryConfController:Landroid/widget/ImageView;

    .line 78
    const v0, 0x7f090097

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mSecondaryInfoView:Landroid/view/View;

    .line 79
    const v0, 0x7f09009a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mSecondaryCallName:Landroid/widget/TextView;

    .line 80
    const v0, 0x7f09009b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mSecondarySimCardInfo:Landroid/widget/ImageView;

    .line 81
    const v0, 0x7f09009c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mSecondaryCallState:Landroid/widget/TextView;

    .line 82
    const v0, 0x7f09009d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mSecondaryCallTime:Landroid/widget/TextView;

    .line 83
    const v0, 0x7f090099

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mSecondaryHungUp:Landroid/view/View;

    .line 84
    const v0, 0x7f090098

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mSecondaryAvatar:Landroid/widget/ImageView;

    .line 85
    const v0, 0x7f09009e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mSecondaryConfController:Landroid/widget/ImageView;

    .line 87
    iget-object v0, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mPrimaryInfoView:Landroid/view/View;

    new-instance v1, Lcom/android/incallui/view/DoubleCallInfoView$1;

    invoke-direct {v1, p0}, Lcom/android/incallui/view/DoubleCallInfoView$1;-><init>(Lcom/android/incallui/view/DoubleCallInfoView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v0, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mSecondaryInfoView:Landroid/view/View;

    new-instance v1, Lcom/android/incallui/view/DoubleCallInfoView$2;

    invoke-direct {v1, p0}, Lcom/android/incallui/view/DoubleCallInfoView$2;-><init>(Lcom/android/incallui/view/DoubleCallInfoView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v0, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mPrimaryAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 104
    iget-object v0, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mSecondaryAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 106
    iget-object v0, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mPrimaryConfController:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/incallui/view/DoubleCallInfoView$3;

    invoke-direct {v1, p0}, Lcom/android/incallui/view/DoubleCallInfoView$3;-><init>(Lcom/android/incallui/view/DoubleCallInfoView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v0, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mSecondaryConfController:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/incallui/view/DoubleCallInfoView$4;

    invoke-direct {v1, p0}, Lcom/android/incallui/view/DoubleCallInfoView$4;-><init>(Lcom/android/incallui/view/DoubleCallInfoView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 62
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 63
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {p0}, Lcom/android/incallui/view/DoubleCallInfoView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0013

    invoke-direct {v0, v1, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mMarkTagTextAppearanceSpan:Landroid/text/style/TextAppearanceSpan;

    .line 65
    invoke-direct {p0, p0}, Lcom/android/incallui/view/DoubleCallInfoView;->showAndInitializeSecondaryCallInfo(Landroid/view/View;)V

    .line 66
    return-void
.end method

.method public setDoublePrimary(Lcom/android/incallui/model/CallCardInfo;ZZZZI)V
    .locals 7
    .param p1, "callInfo"    # Lcom/android/incallui/model/CallCardInfo;
    .param p2, "isConference"    # Z
    .param p3, "isGeneric"    # Z
    .param p4, "isInComingCall"    # Z
    .param p5, "isDialpadPressed"    # Z
    .param p6, "conferenceCount"    # I

    .prologue
    const v5, 0x7f020028

    const/16 v6, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 135
    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    .line 136
    :cond_0
    invoke-static {p2, p3}, Lcom/android/incallui/CallUtils;->getConferenceString(ZZ)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/incallui/model/CallCardInfo;->name:Ljava/lang/String;

    .line 137
    iput-boolean v2, p1, Lcom/android/incallui/model/CallCardInfo;->nameIsNumber:Z

    .line 138
    const/4 v3, 0x0

    iput-object v3, p1, Lcom/android/incallui/model/CallCardInfo;->phoneTag:Ljava/lang/String;

    .line 141
    :cond_1
    iget v3, p1, Lcom/android/incallui/model/CallCardInfo;->simIndicatorResId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    .line 142
    iget-object v3, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mPrimarySimCardInfo:Landroid/widget/ImageView;

    iget v4, p1, Lcom/android/incallui/model/CallCardInfo;->simIndicatorResId:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 143
    iget-object v3, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mPrimarySimCardInfo:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 148
    :goto_0
    if-nez p2, :cond_5

    iget-object v3, p1, Lcom/android/incallui/model/CallCardInfo;->photo:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_5

    .line 149
    invoke-virtual {p0}, Lcom/android/incallui/view/DoubleCallInfoView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p1, Lcom/android/incallui/model/CallCardInfo;->photo:Landroid/graphics/drawable/Drawable;

    invoke-static {v3, v4}, Lcom/android/incallui/ImageUtils;->getCircleAvatarBitmap(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 150
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_4

    .line 151
    iget-object v3, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mPrimaryAvatar:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 159
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_1
    iget-object v3, p1, Lcom/android/incallui/model/CallCardInfo;->name:Ljava/lang/String;

    iget-boolean v4, p1, Lcom/android/incallui/model/CallCardInfo;->nameIsNumber:Z

    iget-object v5, p1, Lcom/android/incallui/model/CallCardInfo;->phoneTag:Ljava/lang/String;

    invoke-virtual {p0, v3, v4, p5, v5}, Lcom/android/incallui/view/DoubleCallInfoView;->setDoublePrimaryName(Ljava/lang/String;ZZLjava/lang/String;)V

    .line 161
    if-eqz p4, :cond_6

    .line 162
    iget-object v3, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mPrimaryHungUp:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 163
    iget-object v3, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mPrimaryHungUp:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 164
    iget-object v3, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mPrimaryHungUp:Landroid/view/View;

    new-instance v4, Lcom/android/incallui/view/DoubleCallInfoView$5;

    invoke-direct {v4, p0}, Lcom/android/incallui/view/DoubleCallInfoView$5;-><init>(Lcom/android/incallui/view/DoubleCallInfoView;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iget-object v3, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mDoubleCallInfoOperationListener:Lcom/android/incallui/view/DoubleCallInfoView$DoubleCallInfoOperationListener;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mDoubleCallInfoOperationListener:Lcom/android/incallui/view/DoubleCallInfoView$DoubleCallInfoOperationListener;

    invoke-interface {v3}, Lcom/android/incallui/view/DoubleCallInfoView$DoubleCallInfoOperationListener;->enablePrimaryHangUp()Z

    move-result v3

    if-nez v3, :cond_2

    .line 173
    iget-object v3, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mPrimaryHungUp:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 179
    :cond_2
    :goto_2
    if-eqz p2, :cond_7

    if-lez p6, :cond_7

    if-nez p4, :cond_7

    .line 180
    .local v1, "showConfControl":Z
    :goto_3
    iget-object v2, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mPrimaryConfController:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v2}, Lcom/android/incallui/view/DoubleCallInfoView;->showDoubleConferenceControl(ZLandroid/widget/ImageView;)V

    .line 181
    return-void

    .line 145
    .end local v1    # "showConfControl":Z
    :cond_3
    iget-object v3, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mPrimarySimCardInfo:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 153
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_4
    iget-object v3, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mPrimaryAvatar:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 156
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_5
    iget-object v3, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mPrimaryAvatar:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 176
    :cond_6
    iget-object v3, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mPrimaryHungUp:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_7
    move v1, v2

    .line 179
    goto :goto_3
.end method

.method public setDoublePrimaryCallElapsedTime(ZLjava/lang/String;)V
    .locals 2
    .param p1, "show"    # Z
    .param p2, "duration"    # Ljava/lang/String;

    .prologue
    .line 362
    if-eqz p1, :cond_1

    .line 363
    iget-object v0, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mPrimaryCallTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mPrimaryCallTime:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/incallui/AnimationUtils$Fade;->show(Landroid/view/View;)V

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mPrimaryCallTime:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    :goto_0
    return-void

    .line 368
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mPrimaryCallTime:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setDoublePrimaryCallInfoVisible(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .prologue
    .line 126
    iget-object v1, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mPrimaryInfoView:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 127
    return-void

    .line 126
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setDoublePrimaryCallState(ILandroid/telecom/DisconnectCause;)V
    .locals 7
    .param p1, "state"    # I
    .param p2, "cause"    # Landroid/telecom/DisconnectCause;

    .prologue
    const v6, 0x800005

    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 294
    const/4 v1, -0x1

    invoke-static {p1, p2, v3, v1}, Lcom/android/incallui/CallUtils;->getCallStateLabelFromState(ILandroid/telecom/DisconnectCause;ZI)Ljava/lang/String;

    move-result-object v0

    .line 297
    .local v0, "callStateLabel":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 298
    iget-object v1, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mPrimaryCallState:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 299
    iget-object v1, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mPrimaryCallState:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    :cond_0
    :goto_0
    if-eq v5, p1, :cond_2

    .line 313
    iget-object v1, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mPrimaryCallName:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 314
    iget-object v1, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mPrimaryCallState:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 315
    iget-object v1, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mPrimaryAvatar:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 316
    iget-object v1, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mPrimaryConfController:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 317
    iget-object v1, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mPrimaryConfController:Landroid/widget/ImageView;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 325
    :goto_1
    return-void

    .line 301
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mPrimaryCallState:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 306
    iget-object v1, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mPrimaryCallState:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getGravity()I

    move-result v1

    if-eq v1, v6, :cond_0

    .line 307
    iget-object v1, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mPrimaryCallState:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    iget-object v1, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mPrimaryCallState:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    .line 319
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mPrimaryCallName:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 320
    iget-object v1, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mPrimaryCallState:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 321
    iget-object v1, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mPrimaryAvatar:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 322
    iget-object v1, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mPrimaryConfController:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 323
    iget-object v1, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mPrimaryConfController:Landroid/widget/ImageView;

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageAlpha(I)V

    goto :goto_1
.end method

.method public setDoublePrimaryName(Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "nameIsNumber"    # Z
    .param p3, "isDialpadPressed"    # Z
    .param p4, "tag"    # Ljava/lang/String;

    .prologue
    .line 231
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 232
    iget-object v2, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mPrimaryCallName:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    :goto_0
    return-void

    .line 234
    :cond_0
    if-eqz p3, :cond_2

    .line 235
    iget-object v2, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mPrimaryCallName:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 236
    iget-object v2, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mPrimaryCallName:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    :goto_1
    const/4 v0, 0x0

    .line 254
    .local v0, "nameDirection":I
    if-eqz p2, :cond_1

    .line 255
    const/4 v0, 0x3

    .line 257
    :cond_1
    iget-object v2, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mPrimaryCallName:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextDirection(I)V

    goto :goto_0

    .line 238
    .end local v0    # "nameDirection":I
    :cond_2
    iget-object v2, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mPrimaryCallName:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 239
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {p1, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 240
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 241
    .local v1, "spannable":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v1, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 242
    invoke-virtual {p0}, Lcom/android/incallui/view/DoubleCallInfoView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 243
    invoke-virtual {v1, p4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 244
    iget-object v2, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mMarkTagTextAppearanceSpan:Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    const/16 v5, 0x21

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 246
    iget-object v2, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mPrimaryCallName:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 248
    .end local v1    # "spannable":Landroid/text/SpannableStringBuilder;
    :cond_3
    iget-object v2, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mPrimaryCallName:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public setDoubleSecondary(Lcom/android/incallui/model/CallCardInfo;ZZZZI)V
    .locals 7
    .param p1, "callCardInfo"    # Lcom/android/incallui/model/CallCardInfo;
    .param p2, "isConference"    # Z
    .param p3, "isGeneric"    # Z
    .param p4, "isInComingCall"    # Z
    .param p5, "isDialpadPressed"    # Z
    .param p6, "conferenceCount"    # I

    .prologue
    const v6, 0x7f020028

    const/16 v5, 0x8

    const/4 v1, 0x0

    .line 186
    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    .line 187
    :cond_0
    invoke-static {p2, p3}, Lcom/android/incallui/CallUtils;->getConferenceString(ZZ)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/incallui/model/CallCardInfo;->name:Ljava/lang/String;

    .line 188
    iput-boolean v1, p1, Lcom/android/incallui/model/CallCardInfo;->nameIsNumber:Z

    .line 189
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/android/incallui/model/CallCardInfo;->phoneTag:Ljava/lang/String;

    .line 192
    :cond_1
    iget v2, p1, Lcom/android/incallui/model/CallCardInfo;->simIndicatorResId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 193
    iget-object v2, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mSecondarySimCardInfo:Landroid/widget/ImageView;

    iget v3, p1, Lcom/android/incallui/model/CallCardInfo;->simIndicatorResId:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 194
    iget-object v2, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mSecondarySimCardInfo:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 199
    :goto_0
    iget-object v2, p1, Lcom/android/incallui/model/CallCardInfo;->name:Ljava/lang/String;

    iget-boolean v3, p1, Lcom/android/incallui/model/CallCardInfo;->nameIsNumber:Z

    iget-object v4, p1, Lcom/android/incallui/model/CallCardInfo;->phoneTag:Ljava/lang/String;

    invoke-virtual {p0, v2, v3, p5, v4}, Lcom/android/incallui/view/DoubleCallInfoView;->setDoubleSecondaryName(Ljava/lang/String;ZZLjava/lang/String;)V

    .line 201
    if-nez p2, :cond_5

    iget-object v2, p1, Lcom/android/incallui/model/CallCardInfo;->photo:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_5

    .line 202
    invoke-virtual {p0}, Lcom/android/incallui/view/DoubleCallInfoView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p1, Lcom/android/incallui/model/CallCardInfo;->photo:Landroid/graphics/drawable/Drawable;

    invoke-static {v2, v3}, Lcom/android/incallui/ImageUtils;->getCircleAvatarBitmap(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 203
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_4

    .line 204
    iget-object v2, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mSecondaryAvatar:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 212
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_1
    if-eqz p4, :cond_6

    .line 213
    iget-object v2, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mSecondaryHungUp:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 214
    iget-object v2, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mSecondaryHungUp:Landroid/view/View;

    new-instance v3, Lcom/android/incallui/view/DoubleCallInfoView$6;

    invoke-direct {v3, p0}, Lcom/android/incallui/view/DoubleCallInfoView$6;-><init>(Lcom/android/incallui/view/DoubleCallInfoView;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    :goto_2
    if-eqz p2, :cond_2

    if-lez p6, :cond_2

    if-nez p4, :cond_2

    const/4 v1, 0x1

    .line 227
    .local v1, "showConfControl":Z
    :cond_2
    iget-object v2, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mSecondaryConfController:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v2}, Lcom/android/incallui/view/DoubleCallInfoView;->showDoubleConferenceControl(ZLandroid/widget/ImageView;)V

    .line 228
    return-void

    .line 196
    .end local v1    # "showConfControl":Z
    :cond_3
    iget-object v2, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mSecondarySimCardInfo:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 206
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_4
    iget-object v2, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mSecondaryAvatar:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 209
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_5
    iget-object v2, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mSecondaryAvatar:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 223
    :cond_6
    iget-object v2, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mSecondaryHungUp:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method public setDoubleSecondaryCallElapsedTime(ZLjava/lang/String;)V
    .locals 2
    .param p1, "show"    # Z
    .param p2, "duration"    # Ljava/lang/String;

    .prologue
    .line 373
    if-eqz p1, :cond_1

    .line 374
    iget-object v0, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mSecondaryCallTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mSecondaryCallTime:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/incallui/AnimationUtils$Fade;->show(Landroid/view/View;)V

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mSecondaryCallTime:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 381
    :goto_0
    return-void

    .line 379
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mSecondaryCallTime:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setDoubleSecondaryCallInfoVisible(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .prologue
    .line 130
    iget-object v1, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mSecondaryInfoView:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 131
    return-void

    .line 130
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setDoubleSecondaryCallState(ILandroid/telecom/DisconnectCause;)V
    .locals 7
    .param p1, "state"    # I
    .param p2, "cause"    # Landroid/telecom/DisconnectCause;

    .prologue
    const v6, 0x800005

    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 328
    const/4 v1, -0x1

    invoke-static {p1, p2, v3, v1}, Lcom/android/incallui/CallUtils;->getCallStateLabelFromState(ILandroid/telecom/DisconnectCause;ZI)Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, "callStateLabel":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 332
    iget-object v1, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mSecondaryCallState:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 333
    iget-object v1, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mSecondaryCallState:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    :cond_0
    :goto_0
    if-eq v5, p1, :cond_2

    .line 347
    iget-object v1, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 348
    iget-object v1, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mSecondaryCallState:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 349
    iget-object v1, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mSecondaryAvatar:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 350
    iget-object v1, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mSecondaryConfController:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 351
    iget-object v1, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mSecondaryConfController:Landroid/widget/ImageView;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 359
    :goto_1
    return-void

    .line 335
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mSecondaryCallState:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 340
    iget-object v1, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mSecondaryCallState:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getGravity()I

    move-result v1

    if-eq v1, v6, :cond_0

    .line 341
    iget-object v1, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mSecondaryCallState:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    iget-object v1, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mSecondaryCallState:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    .line 353
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 354
    iget-object v1, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mSecondaryCallState:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 355
    iget-object v1, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mSecondaryAvatar:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 356
    iget-object v1, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mSecondaryConfController:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 357
    iget-object v1, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mSecondaryConfController:Landroid/widget/ImageView;

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageAlpha(I)V

    goto :goto_1
.end method

.method public setDoubleSecondaryName(Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "nameIsNumber"    # Z
    .param p3, "isDialpadPressed"    # Z
    .param p4, "tag"    # Ljava/lang/String;

    .prologue
    .line 263
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 264
    iget-object v2, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mSecondaryCallName:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    :goto_0
    return-void

    .line 266
    :cond_0
    if-eqz p3, :cond_2

    .line 267
    iget-object v2, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mSecondaryCallName:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 268
    iget-object v2, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    :goto_1
    const/4 v0, 0x0

    .line 286
    .local v0, "nameDirection":I
    if-eqz p2, :cond_1

    .line 287
    const/4 v0, 0x3

    .line 289
    :cond_1
    iget-object v2, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextDirection(I)V

    goto :goto_0

    .line 270
    .end local v0    # "nameDirection":I
    :cond_2
    iget-object v2, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mSecondaryCallName:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 271
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {p1, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 272
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 273
    .local v1, "spannable":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v1, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 274
    invoke-virtual {p0}, Lcom/android/incallui/view/DoubleCallInfoView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 275
    invoke-virtual {v1, p4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 276
    iget-object v2, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mMarkTagTextAppearanceSpan:Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    const/16 v5, 0x21

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 278
    iget-object v2, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 280
    .end local v1    # "spannable":Landroid/text/SpannableStringBuilder;
    :cond_3
    iget-object v2, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public setOnDoubleCallInfoOperationListener(Lcom/android/incallui/view/DoubleCallInfoView$DoubleCallInfoOperationListener;)V
    .locals 0
    .param p1, "mOnActiveCallRequestListener"    # Lcom/android/incallui/view/DoubleCallInfoView$DoubleCallInfoOperationListener;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/incallui/view/DoubleCallInfoView;->mDoubleCallInfoOperationListener:Lcom/android/incallui/view/DoubleCallInfoView$DoubleCallInfoOperationListener;

    .line 123
    return-void
.end method

.method public showDoubleConferenceControl(ZLandroid/widget/ImageView;)V
    .locals 1
    .param p1, "isVisible"    # Z
    .param p2, "view"    # Landroid/widget/ImageView;

    .prologue
    .line 384
    if-eqz p1, :cond_0

    .line 385
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 386
    const v0, 0x7f0200b2

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 391
    :goto_0
    return-void

    .line 388
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 389
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
