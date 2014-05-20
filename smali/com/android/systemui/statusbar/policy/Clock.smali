.class public Lcom/android/systemui/statusbar/policy/Clock;
.super Landroid/widget/TextView;
.source "Clock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/Clock$SettingsObserver;
    }
.end annotation


# static fields
.field private static final AM_PM_STYLE_GONE:I = 0x2

.field private static final AM_PM_STYLE_NORMAL:I = 0x0

.field private static final AM_PM_STYLE_SMALL:I = 0x1


# instance fields
.field private mAmPmStyle:I

.field private mAttached:Z

.field private mCalendar:Ljava/util/Calendar;

.field private mClockFormat:Ljava/text/SimpleDateFormat;

.field private mClockFormatString:Ljava/lang/String;

.field mHandler:Landroid/os/Handler;

.field protected mHidden:Z

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLocale:Ljava/util/Locale;

.field private mObserver:Lcom/android/systemui/statusbar/policy/Clock$SettingsObserver;

.field private mShowSeconds:Z

.field private mTicker:Ljava/lang/Runnable;

.field private mTickerStopped:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/Clock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/Clock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mAmPmStyle:I

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mShowSeconds:Z

    new-instance v0, Lcom/android/systemui/statusbar/policy/Clock$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/Clock$1;-><init>(Lcom/android/systemui/statusbar/policy/Clock;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/statusbar/policy/Clock$SettingsObserver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/Clock$SettingsObserver;-><init>(Lcom/android/systemui/statusbar/policy/Clock;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mObserver:Lcom/android/systemui/statusbar/policy/Clock$SettingsObserver;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->updateSettings()V

    return-void
.end method

.method static synthetic access$0(Lcom/android/systemui/statusbar/policy/Clock;Ljava/util/Calendar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    return-void
.end method

.method static synthetic access$1(Lcom/android/systemui/statusbar/policy/Clock;)Ljava/text/SimpleDateFormat;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockFormat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic access$2(Lcom/android/systemui/statusbar/policy/Clock;)Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$3(Lcom/android/systemui/statusbar/policy/Clock;)Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mLocale:Ljava/util/Locale;

    return-object v0
.end method

.method static synthetic access$4(Lcom/android/systemui/statusbar/policy/Clock;Ljava/util/Locale;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mLocale:Ljava/util/Locale;

    return-void
.end method

.method static synthetic access$5(Lcom/android/systemui/statusbar/policy/Clock;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockFormatString:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$6(Lcom/android/systemui/statusbar/policy/Clock;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$7(Lcom/android/systemui/statusbar/policy/Clock;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mTickerStopped:Z

    return v0
.end method

.method static synthetic access$8(Lcom/android/systemui/statusbar/policy/Clock;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mTicker:Ljava/lang/Runnable;

    return-object v0
.end method

.method private final getSmallTime()Ljava/lang/CharSequence;
    .locals 20

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/Clock;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v11

    const v2, 0xef00

    const v3, 0xef01

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/Clock;->mShowSeconds:Z

    move/from16 v18, v0

    if-eqz v18, :cond_3

    if-eqz v11, :cond_2

    const-string v8, "HH:mm:ss"

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/Clock;->mClockFormatString:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/Clock;->mAmPmStyle:I

    move/from16 v18, v0

    if-eqz v18, :cond_1

    const/4 v4, -0x1

    const/4 v14, 0x0

    const/4 v10, 0x0

    :goto_1
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v18

    if-lt v10, v0, :cond_5

    :goto_2
    if-ltz v4, :cond_1

    move v5, v4

    :goto_3
    if-lez v4, :cond_0

    add-int/lit8 v18, v4, -0x1

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v18

    if-nez v18, :cond_9

    :cond_0
    new-instance v18, Ljava/lang/StringBuilder;

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v8, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v19, 0xef00

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v8, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "a"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const v19, 0xef01

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    add-int/lit8 v19, v5, 0x1

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_1
    new-instance v16, Ljava/text/SimpleDateFormat;

    move-object/from16 v0, v16

    invoke-direct {v0, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/Clock;->mClockFormat:Ljava/text/SimpleDateFormat;

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/systemui/statusbar/policy/Clock;->mClockFormatString:Ljava/lang/String;

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/Clock;->mAmPmStyle:I

    move/from16 v18, v0

    if-eqz v18, :cond_d

    const v18, 0xef00

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    const v18, 0xef01

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    if-ltz v12, :cond_d

    if-le v13, v12, :cond_d

    new-instance v9, Landroid/text/SpannableStringBuilder;

    invoke-direct {v9, v15}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/Clock;->mAmPmStyle:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    add-int/lit8 v18, v13, 0x1

    move/from16 v0, v18

    invoke-virtual {v9, v12, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :goto_5
    return-object v9

    :cond_2
    const-string v8, "h:mm:ss a"

    goto/16 :goto_0

    :cond_3
    if-eqz v11, :cond_4

    const-string v8, "HH:mm"

    :goto_6
    goto/16 :goto_0

    :cond_4
    const-string v8, "h:mm a"

    goto :goto_6

    :cond_5
    invoke-virtual {v8, v10}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v18, 0x27

    move/from16 v0, v18

    if-ne v6, v0, :cond_6

    if-eqz v14, :cond_7

    const/4 v14, 0x0

    :cond_6
    :goto_7
    if-nez v14, :cond_8

    const/16 v18, 0x61

    move/from16 v0, v18

    if-ne v6, v0, :cond_8

    move v4, v10

    goto/16 :goto_2

    :cond_7
    const/4 v14, 0x1

    goto :goto_7

    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    :cond_9
    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_3

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/Clock;->mClockFormat:Ljava/text/SimpleDateFormat;

    move-object/from16 v16, v0

    goto :goto_4

    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/Clock;->mAmPmStyle:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_c

    new-instance v17, Landroid/text/style/RelativeSizeSpan;

    const v18, 0x3f333333

    invoke-direct/range {v17 .. v18}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    const/16 v18, 0x22

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v0, v12, v13, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_c
    add-int/lit8 v18, v13, 0x1

    move/from16 v0, v18

    invoke-virtual {v9, v13, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v18, v12, 0x1

    move/from16 v0, v18

    invoke-virtual {v9, v12, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    goto :goto_5

    :cond_d
    move-object v9, v15

    goto :goto_5
.end method


# virtual methods
.method protected getAMPMTweakName()Ljava/lang/String;
    .locals 1

    const-string v0, "tweaks_clock_ampm"

    return-object v0
.end method

.method protected getClockSecondTweakName()Ljava/lang/String;
    .locals 1

    const-string v0, "tweaks_show_clockseconds"

    return-object v0
.end method

.method protected getColorTweakName()Ljava/lang/String;
    .locals 1

    const-string v0, "tweaks_clock_color"

    return-object v0
.end method

.method protected getVisibilityTweakName()Ljava/lang/String;
    .locals 1

    const-string v0, "tweaks_clock_style"

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 5

    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mAttached:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mAttached:Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/Clock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mObserver:Lcom/android/systemui/statusbar/policy/Clock$SettingsObserver;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/Clock$SettingsObserver;->observe()V

    :cond_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->updateClock()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mTickerStopped:Z

    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/policy/Clock$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/Clock$2;-><init>(Lcom/android/systemui/statusbar/policy/Clock;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mTicker:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mTicker:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mAttached:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mObserver:Lcom/android/systemui/statusbar/policy/Clock$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/Clock$SettingsObserver;->unobserve()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mAttached:Z

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mTickerStopped:Z

    return-void
.end method

.method public setHidden(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mHidden:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->updateVisibility()V

    return-void
.end method

.method public setTimeStyle24H(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mAttached:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->updateClock()V

    :cond_0
    return-void
.end method

.method public final updateClock()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/Clock;->getSmallTime()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/Clock;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public updateSettings()V
    .locals 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/Clock;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->getAMPMTweakName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/Clock;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->getColorTweakName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/Clock;->setTextColor(I)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/Clock;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->getClockSecondTweakName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_3

    move v1, v2

    :goto_0
    iget v4, p0, Lcom/android/systemui/statusbar/policy/Clock;->mAmPmStyle:I

    if-ne v4, v0, :cond_0

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/Clock;->mShowSeconds:Z

    if-eq v1, v4, :cond_2

    :cond_0
    iput v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mAmPmStyle:I

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mShowSeconds:Z

    const-string v4, ""

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockFormatString:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/Clock;->mTickerStopped:Z

    if-eqz v4, :cond_1

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/Clock;->mTickerStopped:Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/Clock;->mTicker:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    :cond_1
    if-eqz v1, :cond_4

    :goto_1
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/Clock;->mTickerStopped:Z

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/Clock;->mAttached:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->updateClock()V

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->updateVisibility()V

    return-void

    :cond_3
    move v1, v3

    goto :goto_0

    :cond_4
    move v3, v2

    goto :goto_1
.end method

.method protected updateVisibility()V
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/Clock;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->getVisibilityTweakName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    if-eqz v0, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/Clock;->mHidden:Z

    if-nez v2, :cond_1

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/Clock;->setVisibility(I)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    goto :goto_1
.end method
