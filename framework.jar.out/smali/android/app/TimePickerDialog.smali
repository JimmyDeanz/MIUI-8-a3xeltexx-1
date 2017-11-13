.class public Landroid/app/TimePickerDialog;
.super Landroid/app/AlertDialog;
.source "TimePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/TimePicker$OnTimeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/TimePickerDialog$OnTimeSetListener;
    }
.end annotation


# static fields
.field private static final HOUR:Ljava/lang/String; = "hour"

.field private static final IS_24_HOUR:Ljava/lang/String; = "is24hour"

.field private static final MINUTE:Ljava/lang/String; = "minute"


# instance fields
.field private final mCalendar:Ljava/util/Calendar;

.field private final mDateFormat:Ljava/text/DateFormat;

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private final mInitialHourOfDay:I

.field private final mInitialMinute:I

.field private final mIs24HourView:Z

.field private final mTimePicker:Landroid/widget/TimePicker;

.field private final mTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

.field private final mValidationCallback:Landroid/widget/TimePicker$ValidationCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "themeResId"    # I
    .param p3, "listener"    # Landroid/app/TimePickerDialog$OnTimeSetListener;
    .param p4, "hourOfDay"    # I
    .param p5, "minute"    # I
    .param p6, "is24HourView"    # Z

    .prologue
    const/4 v7, 0x1

    .line 132
    invoke-static {p1, p2}, Landroid/app/TimePickerDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v5

    invoke-direct {p0, p1, v5}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 275
    new-instance v5, Landroid/app/TimePickerDialog$1;

    invoke-direct {v5, p0}, Landroid/app/TimePickerDialog$1;-><init>(Landroid/app/TimePickerDialog;)V

    iput-object v5, p0, Landroid/app/TimePickerDialog;->mValidationCallback:Landroid/widget/TimePicker$ValidationCallback;

    .line 134
    iput-object p3, p0, Landroid/app/TimePickerDialog;->mTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    .line 135
    iput p4, p0, Landroid/app/TimePickerDialog;->mInitialHourOfDay:I

    .line 136
    iput p5, p0, Landroid/app/TimePickerDialog;->mInitialMinute:I

    .line 137
    iput-boolean p6, p0, Landroid/app/TimePickerDialog;->mIs24HourView:Z

    .line 139
    invoke-virtual {p0}, Landroid/app/TimePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 142
    .local v3, "themeContext":Landroid/content/Context;
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 143
    .local v2, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v6, 0x101049e

    invoke-virtual {v5, v6, v2, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 144
    iget v1, v2, Landroid/util/TypedValue;->resourceId:I

    .line 146
    .local v1, "layoutResId":I
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 147
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x1090119

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 148
    .local v4, "view":Landroid/view/View;
    invoke-virtual {p0, v4}, Landroid/app/TimePickerDialog;->setView(Landroid/view/View;)V

    .line 149
    const/4 v5, -0x1

    const v6, 0x104000a

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6, p0}, Landroid/app/TimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 150
    const/4 v5, -0x2

    const/high16 v6, 0x1040000

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6, p0}, Landroid/app/TimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 151
    invoke-virtual {p0, v7}, Landroid/app/TimePickerDialog;->setButtonPanelLayoutHint(I)V

    .line 153
    const v5, 0x10204c0

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TimePicker;

    iput-object v5, p0, Landroid/app/TimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    .line 154
    iget-object v5, p0, Landroid/app/TimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    iget-boolean v6, p0, Landroid/app/TimePickerDialog;->mIs24HourView:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 155
    iget-object v5, p0, Landroid/app/TimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    iget v6, p0, Landroid/app/TimePickerDialog;->mInitialHourOfDay:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 156
    iget-object v5, p0, Landroid/app/TimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    iget v6, p0, Landroid/app/TimePickerDialog;->mInitialMinute:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 157
    iget-object v5, p0, Landroid/app/TimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v5, p0}, Landroid/widget/TimePicker;->setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V

    .line 158
    iget-object v5, p0, Landroid/app/TimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    iget-object v6, p0, Landroid/app/TimePickerDialog;->mValidationCallback:Landroid/widget/TimePicker$ValidationCallback;

    invoke-virtual {v5, v6}, Landroid/widget/TimePicker;->setValidationCallback(Landroid/widget/TimePicker$ValidationCallback;)V

    .line 161
    invoke-static {p1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v5

    iput-object v5, p0, Landroid/app/TimePickerDialog;->mDateFormat:Ljava/text/DateFormat;

    .line 162
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    iput-object v5, p0, Landroid/app/TimePickerDialog;->mCalendar:Ljava/util/Calendar;

    .line 163
    iget v5, p0, Landroid/app/TimePickerDialog;->mInitialHourOfDay:I

    iget v6, p0, Landroid/app/TimePickerDialog;->mInitialMinute:I

    invoke-direct {p0, v5, v6}, Landroid/app/TimePickerDialog;->updateTitle(II)V

    .line 171
    invoke-virtual {p0}, Landroid/app/TimePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "input_method"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodManager;

    iput-object v5, p0, Landroid/app/TimePickerDialog;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 173
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/app/TimePickerDialog$OnTimeSetListener;
    .param p3, "hourOfDay"    # I
    .param p4, "minute"    # I
    .param p5, "is24HourView"    # Z

    .prologue
    .line 107
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 108
    return-void
.end method

.method static resolveDialogTheme(Landroid/content/Context;I)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .prologue
    .line 111
    if-nez p1, :cond_0

    .line 112
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 113
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x101049e

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 114
    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    .line 116
    .end local v0    # "outValue":Landroid/util/TypedValue;
    .end local p1    # "resId":I
    :cond_0
    return p1
.end method

.method private updateTitle(II)V
    .locals 2
    .param p1, "hour"    # I
    .param p2, "minute"    # I

    .prologue
    .line 180
    iget-object v0, p0, Landroid/app/TimePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 181
    iget-object v0, p0, Landroid/app/TimePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 182
    iget-object v0, p0, Landroid/app/TimePickerDialog;->mDateFormat:Ljava/text/DateFormat;

    iget-object v1, p0, Landroid/app/TimePickerDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/TimePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 184
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 205
    iget-object v0, p0, Landroid/app/TimePickerDialog;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Landroid/app/TimePickerDialog;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Landroid/app/TimePickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 211
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 225
    :cond_1
    :goto_0
    return-void

    .line 213
    :pswitch_0
    iget-object v0, p0, Landroid/app/TimePickerDialog;->mTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Landroid/app/TimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v0}, Landroid/widget/TimePicker;->clearFocus()V

    .line 217
    iget-object v0, p0, Landroid/app/TimePickerDialog;->mTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    iget-object v1, p0, Landroid/app/TimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    iget-object v2, p0, Landroid/app/TimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v2}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Landroid/app/TimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v3}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Landroid/app/TimePickerDialog$OnTimeSetListener;->onTimeSet(Landroid/widget/TimePicker;II)V

    goto :goto_0

    .line 222
    :pswitch_1
    invoke-virtual {p0}, Landroid/app/TimePickerDialog;->cancel()V

    goto :goto_0

    .line 211
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 249
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 250
    const-string/jumbo v2, "hour"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 251
    .local v0, "hour":I
    const-string/jumbo v2, "minute"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 252
    .local v1, "minute":I
    iget-object v2, p0, Landroid/app/TimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    const-string/jumbo v3, "is24hour"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 253
    iget-object v2, p0, Landroid/app/TimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 254
    iget-object v2, p0, Landroid/app/TimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 257
    invoke-direct {p0, v0, v1}, Landroid/app/TimePickerDialog;->updateTitle(II)V

    .line 259
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 240
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 241
    .local v0, "state":Landroid/os/Bundle;
    const-string/jumbo v1, "hour"

    iget-object v2, p0, Landroid/app/TimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v2}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 242
    const-string/jumbo v1, "minute"

    iget-object v2, p0, Landroid/app/TimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v2}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 243
    const-string/jumbo v1, "is24hour"

    iget-object v2, p0, Landroid/app/TimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v2}, Landroid/widget/TimePicker;->is24HourView()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 244
    return-object v0
.end method

.method public onTimeChanged(Landroid/widget/TimePicker;II)V
    .locals 0
    .param p1, "view"    # Landroid/widget/TimePicker;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .prologue
    .line 193
    invoke-direct {p0, p2, p3}, Landroid/app/TimePickerDialog;->updateTitle(II)V

    .line 195
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 265
    iget-boolean v1, p0, Landroid/app/TimePickerDialog;->mCancelable:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/app/TimePickerDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/app/TimePickerDialog;->mWindow:Landroid/view/Window;

    iget-object v2, p0, Landroid/app/TimePickerDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p1}, Landroid/view/Window;->shouldCloseOnTouch(Landroid/content/Context;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 266
    invoke-virtual {p0}, Landroid/app/TimePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 267
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 268
    iget-object v1, p0, Landroid/app/TimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v1}, Landroid/widget/TimePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 270
    :cond_0
    iget-object v1, p0, Landroid/app/TimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v1}, Landroid/widget/TimePicker;->clearFocus()V

    .line 272
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public updateTime(II)V
    .locals 2
    .param p1, "hourOfDay"    # I
    .param p2, "minuteOfHour"    # I

    .prologue
    .line 234
    iget-object v0, p0, Landroid/app/TimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 235
    iget-object v0, p0, Landroid/app/TimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 236
    return-void
.end method
