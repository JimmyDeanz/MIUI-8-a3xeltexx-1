.class public Lcom/android/incallui/JeejenCallCardWidget;
.super Landroid/widget/LinearLayout;
.source "JeejenCallCardWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/JeejenCallCardWidget$PhotoAsyncTask;
    }
.end annotation


# instance fields
.field private mCallState:Ljava/lang/String;

.field private mCallback:Lcom/android/incallui/IJeejenInCallCallback;

.field private mDefPhotoImageView:Landroid/widget/ImageView;

.field private mDialerDigits:Ljava/lang/String;

.field private mDistrict:Ljava/lang/String;

.field private mElapsedTime:Ljava/lang/String;

.field private mIncallDialerDigitsEdit:Landroid/widget/EditText;

.field private mIncallDistrictTextView:Landroid/widget/TextView;

.field private mIncallElapsedTimeTextView:Landroid/widget/TextView;

.field private mIncallNameTextView:Landroid/widget/TextView;

.field private mIncallPhoneNumberTextView:Landroid/widget/TextView;

.field private mIncallSplitterView:Landroid/view/View;

.field private mIncomingDistrictTextView:Landroid/widget/TextView;

.field private mIncomingNameTextView:Landroid/widget/TextView;

.field private mIncomingPhoneNumberTextView:Landroid/widget/TextView;

.field private mIncomingSplitterView:Landroid/view/View;

.field private mJeejenIncallLinearLayout:Landroid/view/View;

.field private mJeejenIncomingcallLinearLayout:Landroid/view/View;

.field private mName:Ljava/lang/String;

.field private mNameReal:Ljava/lang/String;

.field private mNextRefreshPhotoFlag:Z

.field private mPhoneNumber:Ljava/lang/String;

.field private mPhoneNumberOnPhoto:Ljava/lang/String;

.field private mPhoneNumberReal:Ljava/lang/String;

.field private mPhotoBitmap:Landroid/graphics/Bitmap;

.field private mPhotoImageView:Landroid/widget/ImageView;

.field private mPhotoImageViewBottom:Landroid/widget/ImageView;

.field private mPhotoImageViewTop:Landroid/widget/ImageView;

.field private mPhotoWidget:Landroid/view/ViewGroup;

.field private mRunningPhotoAsyncTask:Lcom/android/incallui/JeejenCallCardWidget$PhotoAsyncTask;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    iput-object v1, p0, Lcom/android/incallui/JeejenCallCardWidget;->mPhotoWidget:Landroid/view/ViewGroup;

    .line 20
    iput-object v1, p0, Lcom/android/incallui/JeejenCallCardWidget;->mDefPhotoImageView:Landroid/widget/ImageView;

    .line 21
    iput-object v1, p0, Lcom/android/incallui/JeejenCallCardWidget;->mPhotoImageView:Landroid/widget/ImageView;

    .line 22
    iput-object v1, p0, Lcom/android/incallui/JeejenCallCardWidget;->mPhotoImageViewTop:Landroid/widget/ImageView;

    .line 23
    iput-object v1, p0, Lcom/android/incallui/JeejenCallCardWidget;->mPhotoImageViewBottom:Landroid/widget/ImageView;

    .line 25
    iput-object v1, p0, Lcom/android/incallui/JeejenCallCardWidget;->mJeejenIncallLinearLayout:Landroid/view/View;

    .line 26
    iput-object v1, p0, Lcom/android/incallui/JeejenCallCardWidget;->mIncallNameTextView:Landroid/widget/TextView;

    .line 27
    iput-object v1, p0, Lcom/android/incallui/JeejenCallCardWidget;->mIncallPhoneNumberTextView:Landroid/widget/TextView;

    .line 28
    iput-object v1, p0, Lcom/android/incallui/JeejenCallCardWidget;->mIncallDialerDigitsEdit:Landroid/widget/EditText;

    .line 29
    iput-object v1, p0, Lcom/android/incallui/JeejenCallCardWidget;->mIncallDistrictTextView:Landroid/widget/TextView;

    .line 30
    iput-object v1, p0, Lcom/android/incallui/JeejenCallCardWidget;->mIncallSplitterView:Landroid/view/View;

    .line 31
    iput-object v1, p0, Lcom/android/incallui/JeejenCallCardWidget;->mIncallElapsedTimeTextView:Landroid/widget/TextView;

    .line 34
    iput-object v1, p0, Lcom/android/incallui/JeejenCallCardWidget;->mIncomingNameTextView:Landroid/widget/TextView;

    .line 35
    iput-object v1, p0, Lcom/android/incallui/JeejenCallCardWidget;->mIncomingPhoneNumberTextView:Landroid/widget/TextView;

    .line 36
    iput-object v1, p0, Lcom/android/incallui/JeejenCallCardWidget;->mIncomingDistrictTextView:Landroid/widget/TextView;

    .line 37
    iput-object v1, p0, Lcom/android/incallui/JeejenCallCardWidget;->mIncomingSplitterView:Landroid/view/View;

    .line 39
    iput-object v1, p0, Lcom/android/incallui/JeejenCallCardWidget;->mName:Ljava/lang/String;

    .line 40
    iput-object v1, p0, Lcom/android/incallui/JeejenCallCardWidget;->mPhoneNumber:Ljava/lang/String;

    .line 41
    iput-object v1, p0, Lcom/android/incallui/JeejenCallCardWidget;->mElapsedTime:Ljava/lang/String;

    .line 42
    iput-object v1, p0, Lcom/android/incallui/JeejenCallCardWidget;->mCallState:Ljava/lang/String;

    .line 43
    iput-object v1, p0, Lcom/android/incallui/JeejenCallCardWidget;->mDialerDigits:Ljava/lang/String;

    .line 44
    iput-object v1, p0, Lcom/android/incallui/JeejenCallCardWidget;->mDistrict:Ljava/lang/String;

    .line 46
    iput-object v1, p0, Lcom/android/incallui/JeejenCallCardWidget;->mNameReal:Ljava/lang/String;

    .line 47
    iput-object v1, p0, Lcom/android/incallui/JeejenCallCardWidget;->mPhoneNumberReal:Ljava/lang/String;

    .line 49
    iput-object v1, p0, Lcom/android/incallui/JeejenCallCardWidget;->mPhoneNumberOnPhoto:Ljava/lang/String;

    .line 50
    iput-object v1, p0, Lcom/android/incallui/JeejenCallCardWidget;->mPhotoBitmap:Landroid/graphics/Bitmap;

    .line 51
    iput-object v1, p0, Lcom/android/incallui/JeejenCallCardWidget;->mRunningPhotoAsyncTask:Lcom/android/incallui/JeejenCallCardWidget$PhotoAsyncTask;

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/JeejenCallCardWidget;->mNextRefreshPhotoFlag:Z

    .line 54
    iput-object v1, p0, Lcom/android/incallui/JeejenCallCardWidget;->mCallback:Lcom/android/incallui/IJeejenInCallCallback;

    .line 59
    return-void
.end method

.method static synthetic access$002(Lcom/android/incallui/JeejenCallCardWidget;Lcom/android/incallui/JeejenCallCardWidget$PhotoAsyncTask;)Lcom/android/incallui/JeejenCallCardWidget$PhotoAsyncTask;
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/JeejenCallCardWidget;
    .param p1, "x1"    # Lcom/android/incallui/JeejenCallCardWidget$PhotoAsyncTask;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/android/incallui/JeejenCallCardWidget;->mRunningPhotoAsyncTask:Lcom/android/incallui/JeejenCallCardWidget$PhotoAsyncTask;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/incallui/JeejenCallCardWidget;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/JeejenCallCardWidget;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/incallui/JeejenCallCardWidget;->mPhoneNumberOnPhoto:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/incallui/JeejenCallCardWidget;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/JeejenCallCardWidget;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/android/incallui/JeejenCallCardWidget;->doUpdatePhoto(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private calcRealNameAndPhoneNumber()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 144
    iget-object v4, p0, Lcom/android/incallui/JeejenCallCardWidget;->mName:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/incallui/JeejenCallCardWidget;->mName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    move v0, v2

    .line 145
    .local v0, "isNameValid":Z
    :goto_0
    iget-object v4, p0, Lcom/android/incallui/JeejenCallCardWidget;->mPhoneNumber:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/incallui/JeejenCallCardWidget;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    move v1, v2

    .line 146
    .local v1, "isPhoneNumberValid":Z
    :goto_1
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/android/incallui/JeejenCallCardWidget;->mName:Ljava/lang/String;

    :goto_2
    iput-object v2, p0, Lcom/android/incallui/JeejenCallCardWidget;->mNameReal:Ljava/lang/String;

    .line 147
    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/android/incallui/JeejenCallCardWidget;->mPhoneNumber:Ljava/lang/String;

    :goto_3
    iput-object v2, p0, Lcom/android/incallui/JeejenCallCardWidget;->mPhoneNumberReal:Ljava/lang/String;

    .line 148
    iget-object v2, p0, Lcom/android/incallui/JeejenCallCardWidget;->mPhoneNumberReal:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 149
    iget-object v2, p0, Lcom/android/incallui/JeejenCallCardWidget;->mPhoneNumberReal:Ljava/lang/String;

    const-string v3, " "

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/JeejenCallCardWidget;->mPhoneNumberReal:Ljava/lang/String;

    .line 150
    :cond_0
    return-void

    .end local v0    # "isNameValid":Z
    .end local v1    # "isPhoneNumberValid":Z
    :cond_1
    move v0, v3

    .line 144
    goto :goto_0

    .restart local v0    # "isNameValid":Z
    :cond_2
    move v1, v3

    .line 145
    goto :goto_1

    .line 146
    .restart local v1    # "isPhoneNumberValid":Z
    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    .line 147
    :cond_4
    iget-object v2, p0, Lcom/android/incallui/JeejenCallCardWidget;->mName:Ljava/lang/String;

    goto :goto_3
.end method

.method private checkAndAutoOpenDialpad()V
    .locals 0

    .prologue
    .line 153
    return-void
.end method

.method private doTriggerElapsedTimeSplitter()V
    .locals 7

    .prologue
    const/16 v5, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 217
    iget-object v4, p0, Lcom/android/incallui/JeejenCallCardWidget;->mIncallDistrictTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/JeejenCallCardWidget;->mIncallElapsedTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    move v0, v2

    .line 218
    .local v0, "incallNeed":Z
    :goto_0
    iget-object v6, p0, Lcom/android/incallui/JeejenCallCardWidget;->mIncallSplitterView:Landroid/view/View;

    if-eqz v0, :cond_1

    move v4, v3

    :goto_1
    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 219
    iget-object v4, p0, Lcom/android/incallui/JeejenCallCardWidget;->mIncomingDistrictTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/incallui/JeejenCallCardWidget;->mIncomingPhoneNumberTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    move v1, v2

    .line 220
    .local v1, "incomingNeed":Z
    :goto_2
    iget-object v2, p0, Lcom/android/incallui/JeejenCallCardWidget;->mIncomingSplitterView:Landroid/view/View;

    if-eqz v1, :cond_3

    :goto_3
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 221
    return-void

    .end local v0    # "incallNeed":Z
    .end local v1    # "incomingNeed":Z
    :cond_0
    move v0, v3

    .line 217
    goto :goto_0

    .restart local v0    # "incallNeed":Z
    :cond_1
    move v4, v5

    .line 218
    goto :goto_1

    :cond_2
    move v1, v3

    .line 219
    goto :goto_2

    .restart local v1    # "incomingNeed":Z
    :cond_3
    move v3, v5

    .line 220
    goto :goto_3
.end method

.method private doUpdatePhoto(Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    const/16 v2, 0x8

    const/4 v4, 0x4

    const/4 v1, 0x0

    .line 313
    if-nez p1, :cond_1

    .line 314
    iget-object v3, p0, Lcom/android/incallui/JeejenCallCardWidget;->mPhotoImageViewTop:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 315
    iget-object v3, p0, Lcom/android/incallui/JeejenCallCardWidget;->mPhotoImageViewBottom:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 320
    :goto_0
    iget-object v3, p0, Lcom/android/incallui/JeejenCallCardWidget;->mPhotoBitmap:Landroid/graphics/Bitmap;

    if-ne p1, v3, :cond_2

    .line 339
    :cond_0
    :goto_1
    return-void

    .line 317
    :cond_1
    iget-object v3, p0, Lcom/android/incallui/JeejenCallCardWidget;->mPhotoImageViewTop:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 318
    iget-object v3, p0, Lcom/android/incallui/JeejenCallCardWidget;->mPhotoImageViewBottom:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 323
    :cond_2
    iget-object v3, p0, Lcom/android/incallui/JeejenCallCardWidget;->mPhotoBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_4

    .line 324
    iget-object v3, p0, Lcom/android/incallui/JeejenCallCardWidget;->mPhotoImageView:Landroid/widget/ImageView;

    if-eqz v3, :cond_3

    .line 325
    iget-object v3, p0, Lcom/android/incallui/JeejenCallCardWidget;->mPhotoImageView:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 326
    iget-object v3, p0, Lcom/android/incallui/JeejenCallCardWidget;->mPhotoImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 328
    :cond_3
    iget-object v3, p0, Lcom/android/incallui/JeejenCallCardWidget;->mPhotoBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 331
    :cond_4
    iput-object p1, p0, Lcom/android/incallui/JeejenCallCardWidget;->mPhotoBitmap:Landroid/graphics/Bitmap;

    .line 333
    iget-object v3, p0, Lcom/android/incallui/JeejenCallCardWidget;->mPhotoImageView:Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    .line 334
    if-eqz p1, :cond_5

    const/4 v0, 0x1

    .line 335
    .local v0, "isShown":Z
    :goto_2
    iget-object v3, p0, Lcom/android/incallui/JeejenCallCardWidget;->mPhotoImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    :goto_3
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 336
    if-eqz v0, :cond_0

    .line 337
    iget-object v1, p0, Lcom/android/incallui/JeejenCallCardWidget;->mPhotoImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .end local v0    # "isShown":Z
    :cond_5
    move v0, v1

    .line 334
    goto :goto_2

    .restart local v0    # "isShown":Z
    :cond_6
    move v1, v2

    .line 335
    goto :goto_3
.end method

.method private static isSamePhoneNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "pn1"    # Ljava/lang/String;
    .param p1, "pn2"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 197
    if-ne p0, p1, :cond_1

    .line 201
    :cond_0
    :goto_0
    return v0

    .line 199
    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    :cond_3
    if-eqz p0, :cond_4

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private refreshDistrict()V
    .locals 5

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 185
    iget-object v2, p0, Lcom/android/incallui/JeejenCallCardWidget;->mDistrict:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/JeejenCallCardWidget;->mDistrict:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 186
    .local v0, "isShown":Z
    :goto_0
    iget-object v4, p0, Lcom/android/incallui/JeejenCallCardWidget;->mIncomingDistrictTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    move v2, v1

    :goto_1
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 187
    iget-object v2, p0, Lcom/android/incallui/JeejenCallCardWidget;->mIncallDistrictTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 188
    if-eqz v0, :cond_0

    .line 189
    iget-object v1, p0, Lcom/android/incallui/JeejenCallCardWidget;->mIncomingDistrictTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/incallui/JeejenCallCardWidget;->mDistrict:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    iget-object v1, p0, Lcom/android/incallui/JeejenCallCardWidget;->mIncallDistrictTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/incallui/JeejenCallCardWidget;->mDistrict:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/JeejenCallCardWidget;->doTriggerElapsedTimeSplitter()V

    .line 194
    return-void

    .end local v0    # "isShown":Z
    :cond_1
    move v0, v1

    .line 185
    goto :goto_0

    .restart local v0    # "isShown":Z
    :cond_2
    move v2, v3

    .line 186
    goto :goto_1

    :cond_3
    move v1, v3

    .line 187
    goto :goto_2
.end method

.method private refreshElapseAndCallState()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 205
    iget-object v5, p0, Lcom/android/incallui/JeejenCallCardWidget;->mElapsedTime:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/incallui/JeejenCallCardWidget;->mElapsedTime:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    move v1, v3

    .line 206
    .local v1, "isElapsedTimeValid":Z
    :goto_0
    iget-object v5, p0, Lcom/android/incallui/JeejenCallCardWidget;->mCallState:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/incallui/JeejenCallCardWidget;->mCallState:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    move v0, v3

    .line 208
    .local v0, "isCallStateValid":Z
    :goto_1
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/incallui/JeejenCallCardWidget;->mCallState:Ljava/lang/String;

    .line 210
    .local v2, "text":Ljava/lang/String;
    :goto_2
    iget-object v3, p0, Lcom/android/incallui/JeejenCallCardWidget;->mIncallElapsedTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 211
    iget-object v3, p0, Lcom/android/incallui/JeejenCallCardWidget;->mIncallElapsedTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    invoke-direct {p0}, Lcom/android/incallui/JeejenCallCardWidget;->doTriggerElapsedTimeSplitter()V

    .line 214
    return-void

    .end local v0    # "isCallStateValid":Z
    .end local v1    # "isElapsedTimeValid":Z
    .end local v2    # "text":Ljava/lang/String;
    :cond_0
    move v1, v4

    .line 205
    goto :goto_0

    .restart local v1    # "isElapsedTimeValid":Z
    :cond_1
    move v0, v4

    .line 206
    goto :goto_1

    .line 208
    .restart local v0    # "isCallStateValid":Z
    :cond_2
    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/android/incallui/JeejenCallCardWidget;->mElapsedTime:Ljava/lang/String;

    goto :goto_2

    :cond_3
    const-string v2, " "

    goto :goto_2
.end method

.method private refreshNameAndDialerDigits()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/16 v5, 0x8

    const/4 v3, 0x0

    .line 156
    iget-object v4, p0, Lcom/android/incallui/JeejenCallCardWidget;->mDialerDigits:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/incallui/JeejenCallCardWidget;->mDialerDigits:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3

    move v0, v2

    .line 157
    .local v0, "isDialerDigitsShown":Z
    :goto_0
    if-nez v0, :cond_4

    iget-object v4, p0, Lcom/android/incallui/JeejenCallCardWidget;->mNameReal:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/incallui/JeejenCallCardWidget;->mNameReal:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_4

    move v1, v2

    .line 158
    .local v1, "isNameShown":Z
    :goto_1
    if-nez v0, :cond_5

    if-nez v1, :cond_5

    iget-object v4, p0, Lcom/android/incallui/JeejenCallCardWidget;->mPhoneNumberReal:Ljava/lang/String;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/incallui/JeejenCallCardWidget;->mPhoneNumberReal:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_5

    .line 160
    .local v2, "isPhoneNumberShown":Z
    :goto_2
    iget-object v6, p0, Lcom/android/incallui/JeejenCallCardWidget;->mIncallNameTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_6

    move v4, v3

    :goto_3
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 161
    iget-object v6, p0, Lcom/android/incallui/JeejenCallCardWidget;->mIncallPhoneNumberTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_7

    move v4, v3

    :goto_4
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 162
    iget-object v6, p0, Lcom/android/incallui/JeejenCallCardWidget;->mIncallDialerDigitsEdit:Landroid/widget/EditText;

    if-eqz v0, :cond_8

    move v4, v3

    :goto_5
    invoke-virtual {v6, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 164
    iget-object v6, p0, Lcom/android/incallui/JeejenCallCardWidget;->mIncomingNameTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_9

    move v4, v3

    :goto_6
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 165
    iget-object v4, p0, Lcom/android/incallui/JeejenCallCardWidget;->mIncomingPhoneNumberTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_a

    :goto_7
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 167
    if-eqz v0, :cond_0

    .line 168
    iget-object v3, p0, Lcom/android/incallui/JeejenCallCardWidget;->mIncallDialerDigitsEdit:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/android/incallui/JeejenCallCardWidget;->mDialerDigits:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v3, p0, Lcom/android/incallui/JeejenCallCardWidget;->mIncallDialerDigitsEdit:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/android/incallui/JeejenCallCardWidget;->mDialerDigits:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 170
    iget-object v3, p0, Lcom/android/incallui/JeejenCallCardWidget;->mIncallDistrictTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 172
    :cond_0
    if-eqz v1, :cond_1

    .line 173
    iget-object v3, p0, Lcom/android/incallui/JeejenCallCardWidget;->mIncallNameTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/incallui/JeejenCallCardWidget;->mNameReal:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v3, p0, Lcom/android/incallui/JeejenCallCardWidget;->mIncomingNameTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/incallui/JeejenCallCardWidget;->mNameReal:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    :cond_1
    if-eqz v2, :cond_2

    .line 177
    iget-object v3, p0, Lcom/android/incallui/JeejenCallCardWidget;->mIncallPhoneNumberTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/incallui/JeejenCallCardWidget;->mPhoneNumberReal:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v3, p0, Lcom/android/incallui/JeejenCallCardWidget;->mIncomingNameTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/incallui/JeejenCallCardWidget;->mPhoneNumberReal:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    :cond_2
    invoke-direct {p0}, Lcom/android/incallui/JeejenCallCardWidget;->doTriggerElapsedTimeSplitter()V

    .line 182
    return-void

    .end local v0    # "isDialerDigitsShown":Z
    .end local v1    # "isNameShown":Z
    .end local v2    # "isPhoneNumberShown":Z
    :cond_3
    move v0, v3

    .line 156
    goto/16 :goto_0

    .restart local v0    # "isDialerDigitsShown":Z
    :cond_4
    move v1, v3

    .line 157
    goto :goto_1

    .restart local v1    # "isNameShown":Z
    :cond_5
    move v2, v3

    .line 158
    goto :goto_2

    .restart local v2    # "isPhoneNumberShown":Z
    :cond_6
    move v4, v5

    .line 160
    goto :goto_3

    :cond_7
    move v4, v5

    .line 161
    goto :goto_4

    :cond_8
    move v4, v5

    .line 162
    goto :goto_5

    :cond_9
    move v4, v5

    .line 164
    goto :goto_6

    :cond_a
    move v3, v5

    .line 165
    goto :goto_7
.end method

.method private refreshPhoto()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 289
    iget-object v3, p0, Lcom/android/incallui/JeejenCallCardWidget;->mPhoneNumberOnPhoto:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/incallui/JeejenCallCardWidget;->mPhoneNumberReal:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/incallui/JeejenCallCardWidget;->isSamePhoneNumber(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    .line 290
    .local v0, "changed":Z
    :goto_0
    if-nez v0, :cond_2

    iget-boolean v3, p0, Lcom/android/incallui/JeejenCallCardWidget;->mNextRefreshPhotoFlag:Z

    if-nez v3, :cond_2

    .line 310
    :cond_0
    :goto_1
    return-void

    .end local v0    # "changed":Z
    :cond_1
    move v0, v2

    .line 289
    goto :goto_0

    .line 294
    .restart local v0    # "changed":Z
    :cond_2
    if-eqz v0, :cond_3

    .line 295
    invoke-direct {p0, v5}, Lcom/android/incallui/JeejenCallCardWidget;->doUpdatePhoto(Landroid/graphics/Bitmap;)V

    .line 299
    :cond_3
    iput-boolean v2, p0, Lcom/android/incallui/JeejenCallCardWidget;->mNextRefreshPhotoFlag:Z

    .line 300
    iget-object v3, p0, Lcom/android/incallui/JeejenCallCardWidget;->mPhoneNumberReal:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/incallui/JeejenCallCardWidget;->mPhoneNumberOnPhoto:Ljava/lang/String;

    .line 301
    iget-object v3, p0, Lcom/android/incallui/JeejenCallCardWidget;->mPhoneNumberOnPhoto:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/JeejenCallCardWidget;->mPhoneNumberOnPhoto:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 302
    iget-object v3, p0, Lcom/android/incallui/JeejenCallCardWidget;->mRunningPhotoAsyncTask:Lcom/android/incallui/JeejenCallCardWidget$PhotoAsyncTask;

    if-eqz v3, :cond_4

    .line 303
    iget-object v3, p0, Lcom/android/incallui/JeejenCallCardWidget;->mRunningPhotoAsyncTask:Lcom/android/incallui/JeejenCallCardWidget$PhotoAsyncTask;

    invoke-virtual {v3, v1}, Lcom/android/incallui/JeejenCallCardWidget$PhotoAsyncTask;->cancel(Z)Z

    .line 304
    iput-object v5, p0, Lcom/android/incallui/JeejenCallCardWidget;->mRunningPhotoAsyncTask:Lcom/android/incallui/JeejenCallCardWidget$PhotoAsyncTask;

    .line 307
    :cond_4
    new-instance v1, Lcom/android/incallui/JeejenCallCardWidget$PhotoAsyncTask;

    iget-object v3, p0, Lcom/android/incallui/JeejenCallCardWidget;->mPhoneNumberOnPhoto:Ljava/lang/String;

    invoke-direct {v1, p0, v3}, Lcom/android/incallui/JeejenCallCardWidget$PhotoAsyncTask;-><init>(Lcom/android/incallui/JeejenCallCardWidget;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/incallui/JeejenCallCardWidget;->mRunningPhotoAsyncTask:Lcom/android/incallui/JeejenCallCardWidget$PhotoAsyncTask;

    .line 308
    iget-object v1, p0, Lcom/android/incallui/JeejenCallCardWidget;->mRunningPhotoAsyncTask:Lcom/android/incallui/JeejenCallCardWidget$PhotoAsyncTask;

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/incallui/JeejenCallCardWidget$PhotoAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1
.end method


# virtual methods
.method public bindCallCardPhotoWidget(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "photoWidget"    # Landroid/view/ViewGroup;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/incallui/JeejenCallCardWidget;->mPhotoWidget:Landroid/view/ViewGroup;

    .line 87
    const v0, 0x7f0900aa

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/JeejenCallCardWidget;->mDefPhotoImageView:Landroid/widget/ImageView;

    .line 88
    const v0, 0x7f0900ab

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/JeejenCallCardWidget;->mPhotoImageView:Landroid/widget/ImageView;

    .line 89
    const v0, 0x7f0900ac

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/JeejenCallCardWidget;->mPhotoImageViewTop:Landroid/widget/ImageView;

    .line 90
    const v0, 0x7f0900ad

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/JeejenCallCardWidget;->mPhotoImageViewBottom:Landroid/widget/ImageView;

    .line 91
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 63
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 65
    const v0, 0x7f0900ae

    invoke-virtual {p0, v0}, Lcom/android/incallui/JeejenCallCardWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/JeejenCallCardWidget;->mJeejenIncallLinearLayout:Landroid/view/View;

    .line 66
    const v0, 0x7f0900b0

    invoke-virtual {p0, v0}, Lcom/android/incallui/JeejenCallCardWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/JeejenCallCardWidget;->mIncallNameTextView:Landroid/widget/TextView;

    .line 67
    const v0, 0x7f0900b1

    invoke-virtual {p0, v0}, Lcom/android/incallui/JeejenCallCardWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/JeejenCallCardWidget;->mIncallPhoneNumberTextView:Landroid/widget/TextView;

    .line 68
    const v0, 0x7f0900b2

    invoke-virtual {p0, v0}, Lcom/android/incallui/JeejenCallCardWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/incallui/JeejenCallCardWidget;->mIncallDialerDigitsEdit:Landroid/widget/EditText;

    .line 69
    const v0, 0x7f0900b4

    invoke-virtual {p0, v0}, Lcom/android/incallui/JeejenCallCardWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/JeejenCallCardWidget;->mIncallDistrictTextView:Landroid/widget/TextView;

    .line 70
    const v0, 0x7f0900b3

    invoke-virtual {p0, v0}, Lcom/android/incallui/JeejenCallCardWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/JeejenCallCardWidget;->mIncallSplitterView:Landroid/view/View;

    .line 71
    const v0, 0x7f0900af

    invoke-virtual {p0, v0}, Lcom/android/incallui/JeejenCallCardWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/JeejenCallCardWidget;->mIncallElapsedTimeTextView:Landroid/widget/TextView;

    .line 73
    const v0, 0x7f0900b5

    invoke-virtual {p0, v0}, Lcom/android/incallui/JeejenCallCardWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/JeejenCallCardWidget;->mJeejenIncomingcallLinearLayout:Landroid/view/View;

    .line 74
    const v0, 0x7f0900b6

    invoke-virtual {p0, v0}, Lcom/android/incallui/JeejenCallCardWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/JeejenCallCardWidget;->mIncomingNameTextView:Landroid/widget/TextView;

    .line 75
    const v0, 0x7f0900b7

    invoke-virtual {p0, v0}, Lcom/android/incallui/JeejenCallCardWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/JeejenCallCardWidget;->mIncomingPhoneNumberTextView:Landroid/widget/TextView;

    .line 76
    const v0, 0x7f0900b9

    invoke-virtual {p0, v0}, Lcom/android/incallui/JeejenCallCardWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/JeejenCallCardWidget;->mIncomingDistrictTextView:Landroid/widget/TextView;

    .line 77
    const v0, 0x7f0900b8

    invoke-virtual {p0, v0}, Lcom/android/incallui/JeejenCallCardWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/JeejenCallCardWidget;->mIncomingSplitterView:Landroid/view/View;

    .line 79
    return-void
.end method

.method public switchToIncallLayout()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/incallui/JeejenCallCardWidget;->mJeejenIncallLinearLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lcom/android/incallui/JeejenCallCardWidget;->mJeejenIncomingcallLinearLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 96
    return-void
.end method

.method public switchToIncomingLayout()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/incallui/JeejenCallCardWidget;->mJeejenIncomingcallLinearLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lcom/android/incallui/JeejenCallCardWidget;->mJeejenIncallLinearLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 100
    return-void
.end method

.method public updateCallState(Ljava/lang/String;)V
    .locals 0
    .param p1, "callState"    # Ljava/lang/String;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/incallui/JeejenCallCardWidget;->mCallState:Ljava/lang/String;

    .line 124
    invoke-direct {p0}, Lcom/android/incallui/JeejenCallCardWidget;->refreshElapseAndCallState()V

    .line 125
    return-void
.end method

.method public updateDialerDigits(Ljava/lang/String;)V
    .locals 0
    .param p1, "dialerDigits"    # Ljava/lang/String;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/incallui/JeejenCallCardWidget;->mDialerDigits:Ljava/lang/String;

    .line 129
    invoke-direct {p0}, Lcom/android/incallui/JeejenCallCardWidget;->refreshNameAndDialerDigits()V

    .line 130
    return-void
.end method

.method public updateDistrict(Ljava/lang/String;)V
    .locals 0
    .param p1, "district"    # Ljava/lang/String;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/incallui/JeejenCallCardWidget;->mDistrict:Ljava/lang/String;

    .line 140
    invoke-direct {p0}, Lcom/android/incallui/JeejenCallCardWidget;->refreshDistrict()V

    .line 141
    return-void
.end method

.method public updateElapsedTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "elapsedTime"    # Ljava/lang/String;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/incallui/JeejenCallCardWidget;->mElapsedTime:Ljava/lang/String;

    .line 119
    invoke-direct {p0}, Lcom/android/incallui/JeejenCallCardWidget;->refreshElapseAndCallState()V

    .line 120
    return-void
.end method

.method public updateNameAndPhoneNumber(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/incallui/JeejenCallCardWidget;->mName:Ljava/lang/String;

    .line 109
    iput-object p2, p0, Lcom/android/incallui/JeejenCallCardWidget;->mPhoneNumber:Ljava/lang/String;

    .line 110
    invoke-direct {p0}, Lcom/android/incallui/JeejenCallCardWidget;->calcRealNameAndPhoneNumber()V

    .line 111
    invoke-direct {p0}, Lcom/android/incallui/JeejenCallCardWidget;->checkAndAutoOpenDialpad()V

    .line 112
    invoke-direct {p0}, Lcom/android/incallui/JeejenCallCardWidget;->refreshNameAndDialerDigits()V

    .line 113
    invoke-direct {p0}, Lcom/android/incallui/JeejenCallCardWidget;->refreshDistrict()V

    .line 114
    invoke-direct {p0}, Lcom/android/incallui/JeejenCallCardWidget;->refreshPhoto()V

    .line 115
    return-void
.end method

.method public updateToggleDialpadState(Z)V
    .locals 2
    .param p1, "open"    # Z

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/incallui/JeejenCallCardWidget;->mPhotoImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 134
    iget-object v1, p0, Lcom/android/incallui/JeejenCallCardWidget;->mDefPhotoImageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 136
    :cond_0
    return-void

    .line 134
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
